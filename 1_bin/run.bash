#!/bin/bash

working_dir=`dirname $0`

for file in mgg@foryouandyourcustomers.com whereby-manuelgarciagarcia
do
    sudo cp ${working_dir}/${file} /usr/bin/
    sudo chmod +x /usr/bin/$file
done

