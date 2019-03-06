#!/bin/bash

working_dir=`dirname $0`
new_package=$1

if [ -z ${new_package} ]
then
    echo "usage: $0 <package name>"
    exit
fi

sudo apt-get install -y ${new_package}

cd ${working_dir}
echo ${new_package} >> packages.txt
git add -A
git commit -a -m "added ${new_package}"
git push origin master
