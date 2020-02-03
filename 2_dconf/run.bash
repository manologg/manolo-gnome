#!/bin/bash

working_dir=`dirname $0`

cp ${working_dir}/debian.jpg ~/
cat ${working_dir}/dconf.conf | sed 's/{whoami}/'$(whoami)'/g' | dconf load /

