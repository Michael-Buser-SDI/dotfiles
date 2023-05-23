cp ./.dotfiles/.tmux.conf ~/

yes | sudo apt-get install tmux ripgrep

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
sudo mv squashfs-root /
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
rm nvim.appimage

git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim
cp ./init.lua ~/.config/nvim/lua/user/
