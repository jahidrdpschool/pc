# Multiple PC

## Github Repo Download (1st Time Only):

```bash
git clone https://github.com/jahidrdpschool/pc-cloud-shell.git
```


## Try running a command now:

```bash
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker rmi $(docker images -q)
clear
echo "Downloading the Docker Image"
docker run -p 8080:80 -e DISPLAY=:0.0 -d dorowu/ubuntu-desktop-lxde-vnc
clear
echo ""
echo "Access Link: https://localhost:8080"
echo ""
```

```bash
chmod +x pc-cloud-shell/multiple-pc.sh
./pc-cloud-shell/multiple-pc.sh
```
