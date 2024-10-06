cd ~/Desktop

wget https://github.com/jahidrdpschool/pc/raw/refs/heads/main/system-bash-files/Shell.sh
wget https://github.com/jahidrdpschool/pc/raw/refs/heads/main/system-bash-files/Drive.sh
wget https://github.com/jahidrdpschool/pc/raw/refs/heads/main/system-bash-files/Stream.sh
wget https://github.com/jahidrdpschool/pc/raw/refs/heads/main/system-bash-files/Goto.sh
wget https://github.com/jahidrdpschool/pc/raw/refs/heads/main/system-bash-files/cmd.txt

sed -i 's/\r//g' *.sh

chmod +x *.sh
