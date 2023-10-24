cp ${PWD}/files/flower-dance.zsh-theme ~/.oh-my-zsh/themes/flower-dance.zsh-theme
sed -i 's/ZSH_THEME=.*/ZSH_THEME="flower-dance"/g' ~/.zshrc
chsh -s $(which zsh)

bash nordic-gnome.sh
bash monokai-gnome.sh

bash node.sh

bash apps.sh
