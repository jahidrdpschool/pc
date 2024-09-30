#!/bin/bash

read -p "Enter your stream key: " stream_key

read -p "Enter the input video / URL: " input_url

# Present options for RTMP link and read user's choice
echo "Select an RTMP link:"
echo "1. Facebook"
echo "2. YouTube"
echo "3. Binance"
echo "4. Twitch"
echo "5. Custom URL"
read -p "Enter your choice: " rtmp_choice

# Determine the RTMP link based on user's choice
case $rtmp_choice in
    1)
        rtmp_link="rtmps://live-api-s.facebook.com:443/rtmp/"
        ;;
    2)
        rtmp_link="rtmp://a.rtmp.youtube.com/live2/"
        ;;
    3)
        rtmp_link="rtmps://bnlivepush-ag.bblivestream.com/live/"
        ;;
    4)
        rtmp_link="rtmp://live.twitch.tv/app/"
        ;;
    5)
        read -p "Enter your custom RTMP link: " rtmp_link
        ;;
    *)
        echo "Invalid choice, exiting..."
        exit 1
        ;;
esac

# Check if the input_url starts with "http://" or "https://"
if [[ $input_url == http://* || $input_url == https://* ]]; then
    video_source="$input_url"
else
    video_source="/root/Desktop/$input_url"
fi

ffmpeg -i "$video_source" -c:v libx264 -preset veryfast -b:v 2500k -maxrate 2500k -bufsize 500k -pix_fmt yuv420p -r 60 -g 120 -c:a aac -b:a 128k -ac 2 -f flv "$rtmp_link$stream_key"
