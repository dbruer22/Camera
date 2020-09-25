-i anullsrc=channel_layout=stereo:sample_rate=44100

ffmpeg \
-f alsa -i anullsrc=r=48000:cl=4 \
-f v4l2 -i /dev/video0 \
-c:v libx264 -pix_fmt yuv420p -preset ultrafast -g 10 -b:v 1200 \
-bufsize 512k \
-acodec libmp3lame -ar 44100 \
-threads 2 -qscale 3 \
-b:a 128K \
-r 5 \
-s 640x480 \
-f flv rtmp://a.rtmp.youtube.com/live2/uy16-g4ze-j95j-qtjm-2733
