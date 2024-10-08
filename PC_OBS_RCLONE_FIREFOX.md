# Multiple noVNC

## Github Repo Download (1st Time Only):

  1. Open Google Cloud [Shell](https://shell.cloud.google.com/?hl=en_US&fromcloudshell=true&show=terminal&authuser=1)
  2. Run this command:
```bash
git clone https://github.com/jahidrdpschool/pc.git
```

  ## Step 1: Launch the first novnc2

  1. Run this command:
      ```bash
      docker kill $(docker ps -q)
      docker rm $(docker ps -a -q)
      docker rmi $(docker images -q)
      clear
      docker run -p 8080:80 -e DISPLAY=:0.0 -d dorowu/ubuntu-desktop-lxde-vnc
      clear
      echo ""
      echo "Access Link: https://localhost:8080"
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
      chmod +x pc/pc.sh
      ./pc/pc.sh
      ```
  3. novnc2: Follow the prompts to enter the number of 2 PC you want to launch.
  4. novnc2: Cloud Shell Click on: "Access Link 1: [https://localhost:8001](https://shell.cloud.google.com/devshell/proxy?port=8001&environment_id=default&authuser=1)"
  5. Now Open Main Tab: [https://localhost:8002](https://shell.cloud.google.com/devshell/proxy?port=8002&environment_id=default&authuser=1)

  ## Step 4: Access and use multiple novnc2
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

  ## Step 5: Install OBS Studio
  1. Go to LXTerminal and CMD:
```bash
sudo apt update
 ```
2. OBS Studio
```bash
sudo apt-get install -y obs-studio
```
## Step 6: Install rclone
  1. Update (Optional)
```bash
sudo apt-get update
```
  2. Install rclone
```bash
sudo apt-get install -y rclone
```
  2. Rclone Configuration File Download
```bash
wget https://your-file-website/rclone.conf
```
  3. Create Rclone Folder
```bash
mkdir ~/.config/rclone/
```
  4. Rclone Config File Set Up
```bash
cp ~/rclone.conf ~/.config/rclone/rclone.conf
```
  5. Drive Folder Sync
```bash
rclone sync your-remote-name: ~/Desktop/Url2Up
```
## Step 7: Update Firefox
  1. Package Update
```
sudo apt update
```
  2. Upgrade Firefox
```
sudo apt install --only-upgrade firefox
```
  3. Version Check
```
firefox --version
```
