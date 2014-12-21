#!/usr/bin/env bash

if [ $# -lt 1 ]; then
    echo 'Usage: new.sh <title>'
    exit 1
fi

scriptdir=`dirname "$0"`
title=`echo $1 | tr ' ' '-' | tr '[:upper:]' '[:lower:]'`
filename="${scriptdir}/_posts/`date +%Y-%m-%d-`${title}.md"

touch ${filename}
echo "---" >> ${filename}
echo "title: $1" >> ${filename}
echo "layout: post" >> ${filename}
echo "subtitle: The subtitle" >> ${filename}
echo "date: `date +%Y-%m-%d`" >> ${filename}
echo "author: Greg Brady" >> ${filename}
echo "header-img: img/file.jpg" >> ${filename}
echo "---" >> ${filename}

$EDITOR ${filename}
