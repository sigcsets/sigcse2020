#!/usr/bin/env bash

function build {
  rm -rf _site/
  jekyll build --config _config.yaml,$1
}


function upload {
  rsync -vr \
    -e "ssh -p 7822 -i ~/.ssh/sigcse-key" _site/ \
    sigcse@sigcse.hosting.acm.org:/home/sigcse/www/$1
}

function upload_html {
  rsync -vr \
    -e "ssh -p 7822 -i ~/.ssh/sigcse-key" \
    --include "*/" --exclude="*" --include="*.html" \ 
    _site/ \
    sigcse@sigcse.hosting.acm.org:/home/sigcse/www/$1
}

# First, remove the old site.
if [ -d _site ];
then
  echo "REMOVING THE OLD SITE."
  rm -rf _site/
fi

if [ "$1" == "live" ] || [ "$1" == "all" ];
then
  build _config_live.yaml
  upload sigcse2019/
fi

# If they want to upload the staging site, lets do that.
if [ "$1" == "staging" ] || [ "$1" == "all" ];
then
  build _config_staging.yaml
  upload sigcse2019/.staging
fi

if [ "$1" == "quick" ];
then
  echo DOES NOT WORK
  exit
  build _config_live.yaml
  upload_html sigcse2019/
fi
