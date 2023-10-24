sudo apt install dconf-cli

git clone https://github.com/0xComposure/monokai-gnome-terminal ~/Downloads/monokai-gnome-terminal

BASE_PATH=${PWD}

cd ~/Downloads/monokai-gnome-terminal
bash ./install.sh <<EOF
1
YES
EOF
cd ${BASE_PATH}