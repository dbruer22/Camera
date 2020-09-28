ffmpeg \
-thread_queue_size 1536 \
-f alsa -guess_layout_max 0 -i default:CARD=ConferenceCam \
-thread_queue_size 512 \
-f v4l2 -i /dev/video0 \
-c:v libx264 -pix_fmt yuv420p -preset ultrafast -g 8 -b:v 2500k -maxrate 2500k \
-bufsize 32k -strict experimental \
-acodec libmp3lame -ar 44100 \
-threads 4 -q:v 5 \
-q:a 5 \
-b:a 64k \
-r 30 \
-s 640x480 \
-f flv rtmp://a.rtmp.youtube.com/live2/uy16-g4ze-j95j-qtjm-2733
