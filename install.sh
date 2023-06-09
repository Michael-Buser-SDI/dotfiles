cp ./.dotfiles/.tmux.conf ~/

yes | sudo apt-get install tmux ripgrep

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
sudo mv squashfs-root /
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
rm nvim.appimage

git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim
mkdir ~/.config/nvim/lua/user
cp ./.dotfiles/init.lua ~/.config/nvim/lua/user/init.lua

sudo wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/SpaceMono.zip -P /usr/share/fonts
sudo mkdir /usr/share/fonts/SpaceMono
sudo unzip /usr/share/fonts/SpaceMono.zip -d /usr/share/fonts/SpaceMono
sudo rm -rf /usr/share/fonts/SpaceMono.zip
