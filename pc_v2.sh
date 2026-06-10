#!/bin/bash

# 1. Cleanup old containers to avoid port conflicts
echo "Cleaning up old containers..."
docker rm -f $(docker ps -aq --filter ancestor=linuxserver/webtop:ubuntu-xfce) > /dev/null 2>&1
clear

# Function to run the container
download_and_run() {
  local port=$1
  local index=$2

  # Run the XFCE Webtop container
  # PUID and PGID 1000 ensures permission issues don't happen
  docker run -d \
    --rm \
    -p $port:3000 \
    -e PUID=1000 \
    -e PGID=1000 \
    -e TZ=Asia/Dhaka \
    --name "webtop-pc-$index" \
    linuxserver/webtop:ubuntu-xfce > /dev/null 2>&1

  echo "✅ PC $index is ready! Access Link: http://localhost:$port"
}

# User input for number of PCs
read -p "Enter the number of PC you want to start: " PC

echo ""
echo "🚀 Starting $PC Ubuntu XFCE Desktops..."
echo "---------------------------------------------------"

for ((i = 1; i <= PC; i++)); do
  # Port start hobe 8001 theke (8001, 8002, 8003...)
  port=$((8000 + i))
  download_and_run $port $i
done

echo "---------------------------------------------------"
echo "All systems are online! Enjoy your Virtual PCs. 💻"
echo ""
