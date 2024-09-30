
## JPRQ

### Download 1st Time
```bash
curl -fsSL https://jprq.io/install.sh | sudo bash
```
- First obtain auth token from [jprq.io/auth](https://jprq.io/auth), then

### Your Auth Token
```bash
jprq auth <your-auth-token>
```

### Run
```bash
jprq http 8080 -s custom
```


## Ngrok

### Download 1st Time
```bash
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
```

### Unzip 1st Time
```bash
unzip ngrok-stable-linux-amd64.zip
```

### Ngrok Auth Token (Optional)
```bash
./ngrok authtoken YOUR_AUTH_TOKEN

```

### Run
```bash
./ngrok http 8080
```


## Serveo

### Run
```bash
ssh -R 80:localhost:8080 serveo.net
```
