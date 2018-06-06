#!/usr/bin/env python
"""Upload an example project into database
`AVALON_PROJECTS`, `AVALON_MONGO` and `AVALON_DB` are needed env-var

example:
  $ python import.py batman

"""

import os
import argparse
import pymongo
from bson import json_util

CD = os.path.dirname(os.path.abspath(__file__))

AVALON_DEBUG = bool(os.getenv("AVALON_DEBUG"))
AVALON_PROJECTS = os.getenv("AVALON_PROJECTS", os.path.join(CD, "projects"))
AVALON_MONGO = os.getenv("AVALON_MONGO", "")
AVALON_DB = os.getenv("AVALON_DB", "avalon")

parser = argparse.ArgumentParser(usage=__doc__)
parser.add_argument("project", help="name of project to import")

kwargs = parser.parse_args()

try:
    subprocess.check_call(["mongoimport", "--version"],
                          stdout=subprocess.PIPE,
                          stderr=subprocess.STDOUT)
except Exception:
    sys.stderr.write("error: requires 'mongoimport' to be on your PATH\n")
    sys.exit(1)

fname = os.path.join(AVALON_PROJECTS, kwargs.project, "db.json")

mongoURI = AVALON_MONGO
database = AVALON_DB
if '@' in AVALON_MONGO:
    host = AVALON_MONGO.split('@')[-1]
else:
    host = AVALON_MONGO.split('//')[-1]

result = []
try:
    client = pymongo.MongoClient(mongoURI)
    db = client[database]
    proj = db[kwargs.project]

    data = []
    with open(fname) as data_file:
        for line in data_file:
            data.append(json_util.loads(line))
    result = proj.insert_many(data).inserted_ids

except Exception as error:
    if AVALON_DEBUG:
        raise
    else:
        pass

if result:
    print("success")
    print("  project: %s" % kwargs.project)
    print("  from: %s" % fname)
    print("  to:   %s" % host)
else:
    print("failed")

    # Avoid stating the obvious
    if not AVALON_DEBUG:
        print("Run with AVALON_DEBUG=True for details")
