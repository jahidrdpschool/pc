## Run the Container 1

```bash
docker rm -f webtop-single > /dev/null 2>&1

docker run -d \
  --name webtop-single \
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
docker run --rm -p 8080:80 -e DISPLAY=:0.0 -e -d dorowu/ubuntu-desktop-lxde-vnc
clear
echo ""
echo "Access Link: https://localhost:8080"
echo ""
```

## Access via Web Browser

`https://localhost:8080`

## Run the Container 3

```bash
docker run --rm -p 8080:8080 -e DISPLAY=:0.0 -e vncpassword=12345678 -d u1ih/ubuntu-novnc
clear
read -p "Enter your Authuser ID: " authuser
access_link="https://shell.cloud.google.com/devshell/proxy?authuser=${authuser}&password=12345678&port=8080&environment_id=default"
echo ""
echo "Access Link: ${access_link}"
echo ""
```

## Access via Web Browser

`https://shell.cloud.google.com/devshell/proxy?authuser=(YourProvideID)&password=12345678&port=8080&environment_id=default`

## Run the Container 4

```bash
docker run --rm -p 8080:8080 -e DISPLAY=:0.0 -d solarkennedy/wine-x11-novnc-docker /bin/bash -c "apt-get update && apt-get install -y firefox && firefox & /usr/bin/supervisord"
clear
echo ""
echo "Access Link: https://localhost:8080"
echo ""
```

## Access via Web Browser

`http://localhost:8080`

