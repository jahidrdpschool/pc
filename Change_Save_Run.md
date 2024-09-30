# If something change in dockerfile

## Step 1:

```
docker ps
```

```
docker commit c78c60d4b09f  stream
```
```
docker save -o stream.tar stream
```
```
docker load -i stream.tar
```
```
docker run -p 8080:80 stream
```

## Step 2:

```
docker run -p 8088:80 -e DISPLAY=:0.0 -d stream
clear
echo ""
echo "Access Link: https://localhost:8088"
echo ""
```
