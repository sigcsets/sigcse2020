#!/usr/bin/env bash

function build {
  rm -rf _site/
  bundle exec jekyll build --config _config.yml,$1
}


function upload {
  rsync -vrz \
    -e "ssh -p 7822 -i ~/.ssh/id_rsa" _site/ \
	sigcse@sigcse.hosting.acm.org:/home/sigcse/public_html/$1 --delete
    #sigcse@sigcse.hosting.acm.org:/home/sigcse/www/$1 --delete
	
}

function linkcheck {
  ./_tools/linkcheck.bash $1
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
  #linkcheck live
  upload sigcse2020/
fi

# If they want to upload the staging site, lets do that.
if [ "$1" == "staging" ] || [ "$1" == "all" ];
then
  build _config_staging.yaml
  #linkcheck staging
  upload sigcse2020/.staging
fi