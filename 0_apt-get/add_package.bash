#!/bin/bash

working_dir=`dirname $0`
new_package=$1

# check args
if [ -z ${new_package} ]
then
    echo "usage: $0 <package name>"
    exit
fi

# install
sudo apt-get install -y ${new_package}

# add to git
cd ${working_dir}
echo ${new_package} >> packages.txt
git add -A
git commit -a -m "added ${new_package}"
git push origin master
