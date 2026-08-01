#!/bin/bash

echo "Cleaning up old containers..."
docker rm -f $(docker ps -aq --filter ancestor=linuxserver/webtop:ubuntu-xfce) > /dev/null 2>&1

download_and_run() {
  local port=$1
  local index=$2

  docker run -d \
    --rm \
    -p $port:3000 \
    -e PUID=1000 \
    -e PGID=1000 \
    -e TZ=Asia/Dhaka \
    --name "webtop-pc-$index" \
    linuxserver/webtop:ubuntu-xfce

  echo "✅ PC $index is ready! Access Link: http://localhost:$port"
}

read -p "Enter the number of PC you want to start: " PC < /dev/tty

echo ""
echo "🚀 Starting $PC Ubuntu XFCE Desktops..."
echo "---------------------------------------------------"

for ((i = 1; i <= PC; i++)); do
  port=$((8000 + i))
  download_and_run $port $i
done

echo "---------------------------------------------------"
echo "All systems are online! Enjoy your Virtual PCs. 💻"
echo ""
