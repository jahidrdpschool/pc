  # Multiple Ubuntu Desktop Instances Tutorial

## Github Repo Download (1st Time Only):
  1. Open Google Cloud [Shell](https://shell.cloud.google.com/?hl=en_US&fromcloudshell=true&show=terminal&authuser=1).
  2. Run this command:
```bash
git clone https://github.com/jahidrdpschool/pc.git
```

  ## Step 1: Launch the first Ubuntu Desktop instance

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
  3. Open this URL in a new tab of your web browser

  ## Step 2: Launch additional Ubuntu Desktop instances
  1. Close the Google Cloud Shell tab, but keep the Ubuntu Desktop tab open.
  2. Login to your Gmail account and go to:
      ```
      https://shell.cloud.google.com/
      ```
  3. Open a new terminal and run this command to start a new Ubuntu Desktop container:
      ```bash
      clear
      echo ""
      echo "Access Link: https://localhost:8011"
      echo ""
      docker run -p 8011:80 -e DISPLAY=:0.0 -v /dev/shm:/dev/shm dorowu/ubuntu-desktop-lxde-vnc
      ```
  4. Open https://localhost:8011 this URL in a new tab of web browser


  ## Step 3: Automate launching multiple Ubuntu Desktop instances
  1. Open a new terminal in Google Cloud Shell.
  2. Run this script:
      ```bash
      chmod +x pc/multiple-pc.sh
      ./pc/multiple-pc.sh
      ```
  3. Follow the prompts to enter the number of PCs you want to launch.

  ## Step 4: Access and use multiple Ubuntu Desktop instances
  1. Go back to your main Chrome browser.
  2. Change the port number in the URL one by one to access each Ubuntu Desktop instance.
     Example URLs:
     ```
     https://shell.cloud.google.com/devshell/proxy?authuser=1&port=8001&environment_id=default
     https://shell.cloud.google.com/devshell/proxy?authuser=1&port=8002&environment_id=default
     https://shell.cloud.google.com/devshell/proxy?authuser=1&port=8003&environment_id=default
     ```
  3. Open YouTube in each instance and play videos to simulate watch time across multiple sessions.
