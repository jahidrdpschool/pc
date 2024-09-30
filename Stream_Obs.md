# Multiple PC

Goto [Google Cloud Shell](https://shell.cloud.google.com/cloudshell/open?page=editor&shellonly=true&show=terminal&authuser=)

## Github Repo Download (1st Time Only):

```bash
git clone https://github.com/jahidrdpschool/google-shell-live.git
```

## Download System File (1st Time Only):

```bash
wget https://files.jahid.eu.org/1:/MyDrive/noVNC/Google%20Shell/System%20Files/stream.tar
```

## PC Kill (Not Necessary):

```bash
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker rmi $(docker images -q)
clear
```

# PC Making:

```bash
docker load -i stream.tar
chmod +x google-shell-live/multiple-pc-obs.sh
./google-shell-live/multiple-pc-obs.sh
```


