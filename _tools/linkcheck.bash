#!/bin/bash

if [ "$#" -ne 1 ];
then
  echo "First param must be 'local' or 'live' for linkchecking."
  exit
fi

# Remove any existing venvs
rm -rf _venv

# Create a new one.
virtualenv _venv
. _venv/bin/activate

pushd _tools/pylinkchecker
  python setup.py install
popd

# It makes a mess.
rm -rf pylinkchecker.egg-info

if [ "$1" == "local" ];
then
  pylinkcheck.py -P http://localhost:5000/
fi

if [ "$1" == "live" ];
then
  pylinkcheck.py -P http://sigcse2020.sigcse.org/
fi

if [ "$1" == "staging" ];
then
  echo "Basic Authentication requires a password. Skipping link check for now."
  # pylinkcheck.py -P http://www.sigcse2020.sigcse.org/.staging/
fi
