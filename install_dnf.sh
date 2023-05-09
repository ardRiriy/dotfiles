#!/bin/bash
echo "start installation..."

sudo dnf update -y

echo "install fish shell"
sudo dnf install fish -y

echo "install alacritty"
sudo dnf install alacritty -y

echo "install tmux"
sudo dnf install tmux -y

echo "install nvim"
sudo dnf install neovim -y

echo "install bat and lsd"
sudo dnf install bat -y && sudo dnf install lsd -y

sudo dnf install xclip -y

echo "get PlemolJP Nerd font"
if [ ! -d "/usr/share/fonts/PlemolJPConsole_NF" ]; then
	wget https://github.com/yuru7/PlemolJP/releases/download/v1.6.0/PlemolJP_NF_v1.6.0.zip
	unzip PlemolJP_NF_v1.6.0.zip
	sudo mv ./PlemolJP_NF_v1.6.0/PlemolJPConsole_NF /usr/share/fonts/
	rm -rf ./PlemolJP_NF_v1.6.0 ./PlemolJP_NF_v1.6.0.zip
fi

chmod 777 ./setting.sh
./setting.sh

echo "ALL DONE!"



