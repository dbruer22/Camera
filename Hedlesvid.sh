#!/bin/bash

DATE=$(date +"%Y-%m-%d_%H%M")

ffmpeg -f video4linux2 -r 25 -s 640x480 -i /dev/video0 $DATE.avi

git add *
git commit
git push origin master
