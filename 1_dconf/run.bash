#!/bin/bash

working_dir=`dirname $0`

cat 1_dconf/dconf.conf | dconf load /

