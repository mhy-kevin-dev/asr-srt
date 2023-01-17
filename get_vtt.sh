#!/usr/bin/env bash

echo "Your file: $1"
post_file="audio_file=@$1;type=audio/mpeg"
echo $post_file
output=`basename $1`

if [ ! -f $1 ]; then
    echo "Cannot find [ $1 ]"
    exit 1
fi

curl -X 'POST' \
  'http://127.0.0.1:9000/get-vtt?task=transcribe&language=zh' \
  -H 'accept: */*' \
  -H 'Content-Type: multipart/form-data' \
  -F "$post_file" > $output.vtt

# insert BOM at the begining
sed -i '1s/^/\xef\xbb\xbf/'  > $output.vtt
