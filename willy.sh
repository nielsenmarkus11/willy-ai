#!/bin/bash

speech2text.sh

QUESTION=$(cat stt.txt)
echo "Me: "$QUESTION

ANSWER=$(queryprocess.py $QUESTION)
echo "Willy: "$ANSWER

text2speech.sh $ANSWER
