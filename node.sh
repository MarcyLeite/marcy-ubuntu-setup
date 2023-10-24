# node
sudo curl -sL https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.0/install.sh -o ~/Downloads/install_nvm.sh
mv ~/.bashrc ~/.bashrc-back
bash ~/Downloads/install_nvm.sh
mv ~/.bashrc-back ~/.bashrc

source ~/.profile
nvm install --lts
npm i -g gitmoji-cli
