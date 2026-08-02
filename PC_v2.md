# Multiple noVNC V2

## Github Repo Download (1st Time Only):

  1. Open Google Cloud [Shell](https://shell.cloud.google.com/?hl=en_US&fromcloudshell=true&show=terminal&authuser=1)
  2. Run this command:
```bash
git clone https://github.com/jahidrdpschool/pc.git
```

  ## Step 1: Launch the first novnc2

  1. Run this command:
```bash
echo "Cleaning up old containers..."
docker kill $(docker ps -q) > /dev/null 2>&1
docker rm $(docker ps -a -q) > /dev/null 2>&1

echo "Creating workspace folder..."
mkdir -p $HOME/my-workspace

echo "Starting Ubuntu XFCE Webtop instance mapped directly to Desktop..."
docker run -d \
  --name ubuntu-webtop \
  --rm \
  -p 8080:3000 \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Asia/Dhaka \
  -v "$HOME/my-workspace:/config/Desktop" \
  -w /config/Desktop \
  linuxserver/webtop:ubuntu-xfce

echo ""
echo "---------------------------------------------------"
echo "🚀 Ubuntu XFCE is now running instantly!"
echo "🔗 Access Link: http://localhost:8080"
echo "📂 Linked Folder: $HOME/my-workspace <-> /config/Desktop"
echo "---------------------------------------------------"
echo ""
```
  2. Wait for the container to start.
  3. Cloud Shell Click on "Access Link: [https://localhost:8080](https://shell.cloud.google.com/devshell/proxy?port=8080&environment_id=default&authuser=1)"
  4. Close the Cloud Shell tab, but keep the novnc2 tab open.

  ## Step 2: Launch novnc2

  1. novnc2: Go to Google [Cloud Shell](https://shell.cloud.google.com/?hl=en_US&fromcloudshell=true&show=terminal&authuser=1) Tab.

  ## Step 3: Automate launching multiple novnc2
  1. novnc2: Open a new terminal in Google Cloud Shell.
  2. novnc2: Run this script:
      ```bash
      chmod +x pc/pc_v2.sh
      ./pc/pc_v2.sh
      ```
  3. novnc2: Follow the prompts to enter the number of 2 PC you want to launch.
  4. novnc2: Cloud Shell Click on: "Access Link 1: [https://localhost:8001](https://shell.cloud.google.com/devshell/proxy?port=8001&environment_id=default&authuser=1)"
  5. Now Open Main Tab: [https://localhost:8002](https://shell.cloud.google.com/devshell/proxy?port=8002&environment_id=default&authuser=1)

  ## Step 4: Access and use multiple novnc2 V2
  1. All Access Link (Ctrl+Click Link):

      Link 1: [https://shell.cloud.google.com/devshell/proxy?port=8001&environment_id=default&authuser=1](https://shell.cloud.google.com/devshell/proxy?port=8001&environment_id=default&authuser=1)

      Link 2: [https://shell.cloud.google.com/devshell/proxy?port=8002&environment_id=default&authuser=1](https://shell.cloud.google.com/devshell/proxy?port=8002&environment_id=default&authuser=1)

      Link 3: [https://shell.cloud.google.com/devshell/proxy?port=8003&environment_id=default&authuser=1](https://shell.cloud.google.com/devshell/proxy?port=8003&environment_id=default&authuser=1)

      Link 4: [https://shell.cloud.google.com/devshell/proxy?port=8004&environment_id=default&authuser=1](https://shell.cloud.google.com/devshell/proxy?port=8004&environment_id=default&authuser=1)

      Link 5: [https://shell.cloud.google.com/devshell/proxy?port=8005&environment_id=default&authuser=1](https://shell.cloud.google.com/devshell/proxy?port=8005&environment_id=default&authuser=1)

      Link 6: [https://shell.cloud.google.com/devshell/proxy?port=8006&environment_id=default&authuser=1](https://shell.cloud.google.com/devshell/proxy?port=8006&environment_id=default&authuser=1)

      Link 7: [https://shell.cloud.google.com/devshell/proxy?port=8007&environment_id=default&authuser=1](https://shell.cloud.google.com/devshell/proxy?port=8007&environment_id=default&authuser=1)

      Link 8: [https://shell.cloud.google.com/devshell/proxy?port=8008&environment_id=default&authuser=1](https://shell.cloud.google.com/devshell/proxy?port=8008&environment_id=default&authuser=1)

      Link 9: [https://shell.cloud.google.com/devshell/proxy?port=8009&environment_id=default&authuser=1](https://shell.cloud.google.com/devshell/proxy?port=8009&environment_id=default&authuser=1)

      Link 10: [https://shell.cloud.google.com/devshell/proxy?port=8010&environment_id=default&authuser=1](https://shell.cloud.google.com/devshell/proxy?port=8010&environment_id=default&authuser=1)

      Link 11: [https://shell.cloud.google.com/devshell/proxy?port=8011&environment_id=default&authuser=1](https://shell.cloud.google.com/devshell/proxy?port=8011&environment_id=default&authuser=1)



Keep Alive Link: [https://shell.cloud.google.com/devshell/proxy?port=8002&environment_id=default&authuser=1](https://shell.cloud.google.com/devshell/proxy?port=8002&environment_id=default&authuser=1)



