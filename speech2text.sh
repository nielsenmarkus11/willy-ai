#!/bin/bash

echo "Recording..."
arecord -D "plughw:1,0" -q -f U8 -r 11025 -d 5 | flac - -f --best --sample-rate 11025 -o file.flac > /dev/null 2>&1

echo "Processing..."
wget -q -U "Mozilla/5.0" --post-file file.flac --header "Content-Type: audio/x-flac; rate=11025" -O - "http://www.google.com/speech-api/v2/recognize?lang=en-us&key=AIzaSyCDnbVHFnNR4DBYBIyVie3pJV4AlEsrbBY" |grep -Po '"transcript":.*?[^\\]",' | perl -pe 's/"transcript"://; s/^"//; s/",$//' > stt.txt

#echo -n "You Said: "
#cat stt.txt

#rm file.flac > /dev/null 2>&1
