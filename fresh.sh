wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null;

wget -qO- https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -;

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list;

sudo apt-get update;
sudo apt-get upgrade -y;

sudo apt install terminator docker-ce docker-ce-cli containerd.io sublime-text git -y && sudo apt purge gnome-terminal gedit thunderbird remmina libreoffice cheese gnome-calculator evince gnome-help -y;

sudo snap remove snap-store;

wget -qO- https://raw.githubusercontent.com/Dread0-0/fresh-install/main/wallpaper/wallpaper.png > wallpaper.png

gsettings set org.gnome.desktop.background picture-uri file:///wallpaper.jpg;
