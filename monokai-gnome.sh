sudo apt install dconf-cli

git clone https://github.com/0xComposure/monokai-gnome-terminal ~/Downloads/monokai-gnome-terminal

BASE_PATH=${PWD}

cd ~/Downloads/monokai-gnome-terminal
bash ./install.sh

cd ${BASE_PATH}
