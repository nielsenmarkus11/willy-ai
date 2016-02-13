#!/bin/bash
text2speech.sh "Your wish is my command!"

speech2text.sh

QUESTION=$(cat stt.txt)
echo "Me: "$QUESTION

if [ "$QUESTION" == "shut down" ]
then
text2speech.sh "Goodbye!"
exit 2
fi

ANSWER=$(queryprocess.py $QUESTION)
echo "Willy: "$ANSWER

text2speech.sh $ANSWER
exit 1
