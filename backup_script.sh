#!/bin/bash
source=/home/ubuntu/mock_files
dest=
file_name="backup$(date +"%Y%m%d_%H%M%S").tr.gz"
for file in $(find $source -printf "%P\n") ; do
    if [ -e $dest/$file ] ; then 
        if [ $source/$file -nt $dest/$file ] ; then
        echo "New files detected, archiving and compressing..."
        tar -czvf $file_name -g data.snar $source 
        else
        echo "File $file already compressed, ignoring."
        fi
    else echo"$file is being archived and compressed to $dest"
    tar -czvf $file_name -g data.snar $source
    fi
done