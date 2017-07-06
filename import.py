#!/usr/bin/env python
"""Upload an example project into database

example:
  $ python import.py batman
  $ python import.py batman --host localhost:27017 --user marcus

"""

import os
import sys
import argparse
import subprocess

CD = os.path.dirname(os.path.abspath(__file__))

AVALON_DEBUG = bool(os.getenv("AVALON_DEBUG"))
AVALON_PROJECTS = os.getenv("AVALON_PROJECTS", os.path.join(CD, "projects"))

parser = argparse.ArgumentParser(usage=__doc__)
parser.add_argument("project", help="name of project to import")
parser.add_argument("--host", default="localhost:27017", help="Database URI")
parser.add_argument("--user", default="", help="Database username")
parser.add_argument("--password", default="", help="Database password")

kwargs = parser.parse_args()

try:
    subprocess.check_call(["mongoimport", "--version"],
                          stdout=subprocess.PIPE,
                          stderr=subprocess.STDOUT,
                          shell=True)
except subprocess.CalledProcessError:
    sys.stderr.write("error: requires 'mongoimport' to be on your PATH\n")
    sys.exit(1)

fname = os.path.join(AVALON_PROJECTS, kwargs.project, "db.json")

args = [
    "mongoimport",
    "-h", kwargs.host,
    "-d", "avalon",
    "-u", kwargs.user,
    "-p", kwargs.password,
    "-c", kwargs.project,
    "--file", fname
]

if not AVALON_DEBUG:
    args.append("--quiet")

returncode = subprocess.call(args, shell=True)

if returncode == 0:
    print("success")
    print("  project: %s" % kwargs.project)
    print("  from: %s" % fname)
    print("  to:   %s" % kwargs.host)
else:
    print("failed")

    # Avoid stating the obvious
    if not AVALON_DEBUG:
        print("Run with AVALON_DEBUG=True for details")
