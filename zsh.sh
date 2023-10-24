# zsh
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" << EOF
Y
setup.sh
EOF

cp ${PWD}/files/flower-dance.zsh-theme ~/.oh-my-zsh/themes/flower-dance.zsh-theme
sed -i 's/ZSH_THEME=.*/ZSH_THEME="flower-dance"/g' ~/.zshrc
chsh -s $(which zsh)
