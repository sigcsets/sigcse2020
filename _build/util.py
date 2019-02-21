from airtable import Airtable
from api_key import api_key

import collections
import json
import time
import os
import requests
import yaml

def get_api_key():
    return api_key

def get_root_dir ():
    # https://bit.ly/2GFNi7e
    # https://bit.ly/2ShC8qD
    os.chdir(os.path.abspath(os.getcwd()))
    # os.chdir('..')
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

# https://stackoverflow.com/questions/12470665/how-can-i-write-data-in-yaml-format-in-a-file
def write_yaml (file, ls):
    outf = open(get_root_dir() + '/_data/' + file, 'w')
    yaml.dump(ls, outf, default_flow_style=False)

def sort_dictionary (d):
    ordered = collections.OrderedDict(sorted(d.items()))
    return ordered