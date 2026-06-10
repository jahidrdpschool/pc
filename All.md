## Run the Container 1

```bash
if [ $(docker ps -aq | wc -l) -gt 0 ]; then
  docker rm -f $(docker ps -aq) > /dev/null 2>&1
fi

docker run -d \
  --rm \
  -p 8080:3000 \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Asia/Dhaka \
  linuxserver/webtop:ubuntu-xfce > /dev/null 2>&1

clear
echo ""
echo "Access Link: http://localhost:8080"
echo ""
```

## Access via Web Browser

`https://localhost:8080`


## Run the Container 2

```bash
if [ $(docker ps -aq | wc -l) -gt 0 ]; then
  docker rm -f $(docker ps -aq) > /dev/null 2>&1
fi

docker run -d \
  --rm \
  -p 8080:80 \
  -e DISPLAY=:0.0 \
  dorowu/ubuntu-desktop-lxde-vnc > /dev/null 2>&1

clear
echo ""
echo "Access Link: http://localhost:8080"
echo ""
```

## Access via Web Browser

`https://localhost:8080`

## Run the Container 3

```bash
if [ $(docker ps -aq | wc -l) -gt 0 ]; then
  docker rm -f $(docker ps -aq) > /dev/null 2>&1
fi

docker run -d \
  --rm \
  -p 8080:8080 \
  -e DISPLAY=:0.0 \
  -e vncpassword=12345678 \
  u1ih/ubuntu-novnc > /dev/null 2>&1

clear
read -p "Enter your Authuser ID: " authuser

access_link="https://shell.cloud.google.com/devshell/proxy?authuser=${authuser}&password=12345678&port=8080&environment_id=default"

echo ""
echo "---------------------------------------------------"
echo "🚀 Ubuntu noVNC is now running!"
echo "🔗 Access Link: ${access_link}"
echo "---------------------------------------------------"
echo ""
```

## Access via Web Browser

`https://shell.cloud.google.com/devshell/proxy?authuser=(YourProvideID)&password=12345678&port=8080&environment_id=default`

## Run the Container 4

```bash
if [ $(docker ps -aq | wc -l) -gt 0 ]; then
  docker rm -f $(docker ps -aq) > /dev/null 2>&1
fi

docker run -d \
  --rm \
  -p 8080:8080 \
  -e DISPLAY=:0.0 \
  solarkennedy/wine-x11-novnc-docker \
  /bin/bash -c "apt-get update && apt-get install -y firefox && firefox & /usr/bin/supervisord" > /dev/null 2>&1

clear
echo "⏳ Please wait... Firefox is being installed inside the container."
read -p "Enter your Authuser ID: " authuser

access_link="https://shell.cloud.google.com/devshell/proxy?authuser=${authuser}&port=8080&environment_id=default"

echo ""
echo "---------------------------------------------------"
echo "🚀 Wine-X11 with Firefox is starting!"
echo "🔗 Access Link: ${access_link}"
echo "---------------------------------------------------"
echo "Note: Firefox install hote 1-2 minute lagte pare."
echo ""
```

## Access via Web Browser

`http://localhost:8080`

