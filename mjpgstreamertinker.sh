/usr/local/bin/mjpg_streamer -i "/usr/local/lib/mjpg-streamer/input_uvc.so -n -f 60 -r 320x240 -d /dev/video0" -o "/usr/local/lib/mjpg-streamer/output_http.so -p 8090 -w /usr/local/share/mjpg-streamer/www "
