#!/bin/bash

working_dir=`dirname $0`

cp ${working_dir}/debian.jpg ~/
cat ${working_dir}/dconf.conf | dconf load /

