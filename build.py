"""Project Builder API

example:
    $ python build.py

"""


import os
import sys
import json
import shutil
import logging
import argparse
import tempfile
import subprocess

from avalon import lib, session, io

AVALON_DEBUG = bool(os.getenv("AVALON_DEBUG"))

MissingApps = type("MissingApps", (Exception,), {})
MissingResources = type("MissingResources", (Exception,), {})
MissingProject = type("MissingProject", (Exception,), {})


def run(src, fname, session):
    tempdir = tempfile.mkdtemp()
    with tempfile.NamedTemporaryFile(mode="w+",
                                     dir=tempdir,
                                     suffix=".py",
                                     delete=False) as f:
        module_name = f.name
        f.write(src.format(fname=fname))

    executable = lib.which(session["AVALON_APP"])

    kwargs = dict(
        args=[executable, "-u", module_name],
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
        universal_newlines=True,
        env=session.environment,
    )

    try:
        popen = subprocess.Popen(**kwargs)

        # Blocks until finished
        output = list()
        for line in iter(popen.stdout.readline, ""):
            output.append(line)

    finally:
        popen.wait()  # Wait for return code
        shutil.rmtree(tempdir)

        if AVALON_DEBUG or popen.returncode != 0:
            for number, line in enumerate(src.splitlines()):
                sys.stdout.write("%i: %s\n" % (number + 1, line))

            sys.stdout.write("".join(output))

        if popen.returncode != 0:
            raise RuntimeError("%s raised an error" % module_name)


mayapy = r"""\
import os
import sys
from maya import cmds, standalone
from avalon import api

print("Initializing Maya..")
standalone.initialize()

fname = r"{fname}"

cmds.file(fname, open=True, force=True, ignoreVersion=True)

saved = cmds.file(rename=os.path.basename(fname))
print("Saving to %s.." % saved)
cmds.file(save=True)

context = api.publish()

success = all(
    result["success"]
    for result in context.data["results"]
)

if not success:
    sys.stderr.write("Publishing failed\n")
    os._exit(1)

# Help Maya shutdown without throwing a fit
os._exit(0)
"""


def preflight_check(script, project):
    missing_apps = set()
    missing_resources = set()

    for job in script:
        app = job["session"]["app"]
        if not lib.which(app):
            missing_apps.add(app)

        for resource in job["resources"]:
            resourcepath = os.path.join(cd,
                                        "resources",
                                        project,
                                        resource)
            if not os.path.exists(resourcepath):
                missing_resources.add(resourcepath)

    if missing_apps:
        sys.stderr.write("ERROR: Some applications were not found.\n")
        sys.stderr.write("\n".join(
            "- %s" % app for app in missing_apps)
        )
        sys.stderr.write("\n")
        raise MissingApps()

    if missing_resources:
        sys.stderr.write("ERROR: Some resources were not found.\n")
        sys.stderr.write("\n".join(
            "- %s" % resource for resource in missing_resources)
        )
        sys.stderr.write("\n")
        raise MissingResources()

    # Look for existing project
    io.install()
    io.activate_project(project)

    if not io.find_one({"type": "project", "name": project}):
        raise MissingProject()


def dispatch(project, job):
    """Commence execution of `job` for `project`

    Arguments:
        project (str):
        job (dict): A job, as per the "recipe"

    """

    print(job["message"])

    cd = os.path.dirname(os.path.abspath(__file__))
    resourcedir = os.path.join(cd, "resources", project)

    app = job["session"]["app"]
    src = {
        "mayapy2015": mayapy,
        "mayapy2016": mayapy,
        "mayapy2017": mayapy,
    }[app]

    job["session"]["projects"] = os.path.join(cd, "projects")
    job["session"]["project"] = project

    # Enable overriding these variables via the environment
    AVALON_DB = os.getenv("AVALON_DB")
    AVALON_MONGO = os.getenv("AVALON_MONGO")

    if AVALON_MONGO:
        job["session"]["mongo"] = AVALON_MONGO

    if AVALON_DB:
        job["session"]["db"] = AVALON_DB

    with session.new(**job["session"]) as sess:
        print(sess.format()) if AVALON_DEBUG else ""

        for fname in job.get("resources", list()):
            print(" processing '%s'.." % fname)
            fname = os.path.join(resourcedir, fname)
            session.create_workdir(sess)
            run(src, fname, sess)


if __name__ == '__main__':
    logging.getLogger().setLevel(logging.WARNING)

    parser = argparse.ArgumentParser(usage=__doc__)
    parser.add_argument("project")

    kwargs = parser.parse_args()

    cd = os.path.dirname(os.path.abspath(__file__))
    resourcesdir = os.path.join(cd, "resources", kwargs.project)
    projectdir = os.path.join(cd, "projects", kwargs.project)
    fname = os.path.join(resourcesdir, ".recipe.json")
    # (davidpower) Set this env-var up for later querying from database
    os.environ['AVALON_PROJECT'] = kwargs.project

    try:
        with open(fname) as f:
            script = json.load(f)
    except OSError:
        print("Error: No .recipe.json found for %s" % kwargs.project)
        sys.exit(1)

    try:
        preflight_check(script, kwargs.project)
    except MissingResources:
        sys.exit(1)
    except MissingApps:
        sys.exit(1)
    except MissingProject:
        print("'%s' did not exist, creating.." % kwargs.project)

        returncode = subprocess.call(
            [
                sys.executable,
                "-m", "avalon.inventory",
                "--save",
                "--root", projectdir
            ],

            # Mute output
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT
        )

        if returncode != 0:
            sys.stderr.write(
                "There was a problem with saving %s..\n" % kwargs.project)
            sys.exit(returncode)

    for job in script:
        dispatch(kwargs.project, job)
