#!/bin/bash

working_dir=`dirname $0`
package_list="/tmp/reinstall_packages_list"

echo "" > ${package_list}

for i in `cat ${working_dir}/packages.txt`
do
    echo -n "TRUE $i " >> ${package_list}
done

sudo apt-get update

echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | sudo debconf-set-selections

zenity --list --title="Choose the packages to be installed" \
       --checklist --separator="\n" \
       --width=400 --height=400 \
       --column="" --column="Packages" \
       `cat ${package_list}` | while read package
do
    if [[ ${package} != "\#*" ]]
    then
        echo "Installing ${package}..."
        sudo apt-get install -y "${package}"
        echo "${package} was installed."
    else
        echo "Ignore ${package}"
    fi
    
done

rm ${package_list}

