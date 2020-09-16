#!/bin/bash

DATE=$(date +"%Y-%m-%d_%H%M")

ffmpeg -f video4linux2 -r 25 -s 640x480 -i /dev/video0 black.mp4 \
       -f video4linux2 -r 25 -s 640x480 -i /dev/video2 blue.mp4 \
       -map 0 camera1.webm \
       -map 1 camera2.webm



git add *
git commit
git push origin master
