mkdir ${PWD}/temp
mkdir ~/.themes
tar -xf ${PWD}/files/Nordic-darker.tar.xz -C ${PWD}/temp
cp -r ${PWD}/temp/Nordic-darker-v40 ~/.themes/Nordic-darker-v40
rm -r ${PWD}/temp

gsettings set org.gnome.desktop.interface gtk-theme Nordic-darker-v40
gsettings set org.gnome.desktop.wm.preferences theme Nordic-darker-v40
