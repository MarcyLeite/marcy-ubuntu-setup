# node
sudo curl -sL https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.0/install.sh -o ~/Downloads/install_nvm.sh
mv ~/.bashrc ~/.bashrc-back
mv ~/.profile ~/.profile-back
bash ~/Downloads/install_nvm.sh
mv ~/.bashrc-back ~/.bashrc
mv ~/.profile-back ~/.profile

source ~/.zshrc
nvm install --lts
npm i -g gitmoji-cli
