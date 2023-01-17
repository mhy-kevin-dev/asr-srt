#!/usr/bin/env bash

echo "Your file: $1"
output=`basename $1`

if [ ! -f $1 ]; then
    echo "Cannot find [ $1 ]"
    exit 1
fi


# source /home/kevin/miniconda2/bin/activate /home/kevin/miniconda2/envs/py36 
python srt_norm/srt_norm.py  --srt $1 --exp . 

