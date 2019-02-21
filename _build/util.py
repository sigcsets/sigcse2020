from airtable import Airtable

import json
import time
import os
import requests

def get_root_dir ():
    # https://bit.ly/2GFNi7e
    # https://bit.ly/2ShC8qD
    os.chdir(os.path.abspath(os.environ['ROOT']))
    os.chdir('..')
    return os.curdir

def retrieve_url (url):
    # https://requests.readthedocs.io/en/master/
    r = requests.get(url)
    if r.status_code == 200:
        return r.content
    else:
        # https://bit.ly/2IiiV7z
        raise Exception("Could not retrieve file: " + url)

def place_file (file, dir):
    # https://stackoverflow.com/questions/8858008/how-to-move-a-file-in-python
    os.rename(file, dir + "/" + file)
    return None

def limit_rate ():
    # We are rate limited to 5 requests/second.
    time.sleep(0.25)

# CONTRACT
# get_all_documents : none -> list
# PURPOSE
# Returns a list of JSON values that represent rows in the document base.
def get_all_documents ():
    airtable = Airtable('appkeaOULuXaWL3wS', 'Documents')
    rows = airtable.get_all()
    limit_rate()
    return rows