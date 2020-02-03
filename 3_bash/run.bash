#!/bin/bash

working_dir=`dirname $0`

cp -R ${working_dir}/.manolo_bash* ~

sed 's/alias ls/#alias ls/g' ~/.bashrc > /tmp/bashrc
mv /tmp/bashrc ~/.bashrc

if [[ -z `cat ~/.bashrc | grep manolo_bash` ]]
then
    echo "source ~/.manolo_bashrc" >> ~/.bashrc
    echo "source ~/.manolo_bash_aliases" >> ~/.bashrc
fi

