#!/usr/bin/env python
"""Export a project from the database into an example project
`AVALON_PROJECTS`, `AVALON_MONGO` and `AVALON_DB` are needed env-var

example:
  $ python export.py batman

"""

import os
import sys
import argparse
import subprocess
import json
import pymongo
from bson import json_util

CD = os.path.dirname(os.path.abspath(__file__))

AVALON_DEBUG = bool(os.getenv("AVALON_DEBUG"))
AVALON_PROJECTS = os.getenv("AVALON_PROJECTS", os.path.join(CD, "projects"))
AVALON_MONGO = os.getenv("AVALON_MONGO", "")
AVALON_DB = os.getenv("AVALON_DB", "")

parser = argparse.ArgumentParser(usage=__doc__)
parser.add_argument("project", help="name of project to export")

kwargs = parser.parse_args()

fname = os.path.join(AVALON_PROJECTS, kwargs.project, "db.json")

mongoURI = AVALON_MONGO
database = AVALON_DB
host = AVALON_MONGO.split('@')[-1]

result = False
try:
    client = pymongo.MongoClient(mongoURI)
    db = client[database]
    proj = db[kwargs.project]

    projdata = proj.find()
    with open(fname, 'w') as data_file:
        for data in json.loads(json_util.dumps(projdata)):
            data_file.write(json.dumps(data) + '\n')
    result = True

except Exception as error:
    if AVALON_DEBUG:
        raise
    else:
        pass

if result:
    print("success")
    print("  project: %s" % kwargs.project)
    print("  from: %s" % host)
    print("  to:   %s" % fname)
else:
    print("failed")

    # Avoid stating the obvious
    if not AVALON_DEBUG:
        print("Run with AVALON_DEBUG=True for details")
