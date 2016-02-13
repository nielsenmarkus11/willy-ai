#!/bin/bash
pocketsphinx_continuous -adcdev plughw:1,0 -samprate 16000/8000/48000 -inmic yes -keyphrase "hello larry" -kws_threshold 1e-20

