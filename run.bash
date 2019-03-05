#!/bin/bash

steps="/tmp/reinstall_steps"

echo "" > ${steps}

for i in `ls | grep _`
do
    echo -n "TRUE $i " >> ${steps}
done

zenity --list --title="Choose the steps to be installed" \
       --checklist --separator="\n" \
       --width=400 --height=400 \
       --column="" --column="Steps" \
       `cat ${steps}` | while read step
do
    echo "Executing step ${step}..."
    bash ${step}/run.bash
    echo "${step} DONE!"
    echo
done

rm ${steps}

