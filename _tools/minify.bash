#!/bin/bash
WEBROOT=`pwd`
YUI=${WEBROOT}/_tools/yuicompressor-2.4.8.jar
HTML=${WEBROOT}/_tools/htmlcompressor-1.5.3.jar

function globexists {
  test -e "$1" -o -L "$1"
}

minimizeHTML () {
  if globexists *.html
    then
    for h in `ls *.html`
      do
        echo Minifying HTML in: $h
        java -jar $HTML -o TMP $h
        mv TMP $h
      done
    fi
}

###################
# Minify the HTML
pushd _site > /dev/null

minimizeHTML

for dir in `ls`
do
  if [ -d $dir ]
  then
    echo Moving into "[ $dir ]" to minimize HTML;
    pushd $dir > /dev/null
      minimizeHTML
    popd > /dev/null
  fi
done
popd > /dev/null

###################
# Minify the CSS files
echo Minimizing CSS files
pushd _site/css > /dev/null
for i in `ls *.css`
do
  echo Minifying $i;
  java -jar ${YUI} $i > TMP
  mv tmp $i
done
popd  > /dev/null


# Minify the JS files
#pushd _site/js
#for i in `ls *.js`
#do
#  echo $i;
#  java -jar ${YUI} $i > TMP
#  mv tmp $i
#done
#popd
