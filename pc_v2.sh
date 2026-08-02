#!/bin/bash

echo "Cleaning up old containers..."
docker rm -f $(docker ps -aq --filter ancestor=linuxserver/webtop:ubuntu-xfce) > /dev/null 2>&1

download_and_run() {
  local port=$1
  local index=$2
  local workspace="$HOME/my-workspace/pc-$index"

  mkdir -p "$workspace"

  docker run -d \
    --rm \
    -p $port:3000 \
    -e PUID=1000 \
    -e PGID=1000 \
    -e TZ=Asia/Dhaka \
    --name "webtop-pc-$index" \
    -v "$workspace:/config/Desktop" \
    -w /config/Desktop \
    linuxserver/webtop:ubuntu-xfce

  echo "✅ PC $index is ready!"
  echo "   🔗 Local Link: http://localhost:$port"
  echo "   🌐 Cloud Shell Link: https://shell.cloud.google.com/devshell/proxy?port=$port&environment_id=default&authuser=1"
  echo "   📂 Workspace: $workspace <-> Desktop"
  echo "---------------------------------------------------"
}

read -p "Enter the number of PC you want to start: " PC < /dev/tty

echo ""
echo "🚀 Starting $PC Ubuntu XFCE Desktops..."
echo "---------------------------------------------------"

for ((i = 1; i <= PC; i++)); do
  port=$((8000 + i))
  download_and_run $port $i
done

echo "All systems are online! Enjoy your Virtual PCs. 💻"
echo ""
