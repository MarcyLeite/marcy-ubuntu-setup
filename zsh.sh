# zsh
sudo apt install zsh
cp ${PWD}/files/flower-dance.zsh-theme ~/.oh-my-zsh/themes/flower-dance.zsh-theme
sed 's/ZSH_THEME=.*/ZSH_THEME="flower-dance"/g' ~/.zshrc | tee ~/.zshrc
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s $(which zsh)
