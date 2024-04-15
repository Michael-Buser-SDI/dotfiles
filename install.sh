yes | sudo apt update

yes | sudo apt-get install tmux ripgrep

curl -LO https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/SpaceMono.zip
mkdir /usr/share/fonts/truetype/spacemono
sudo unzip SpaceMono.zip -d /usr/share/fonts/truetype/spacemono
sudo fc-cache -f -v
rm -rf SpaceMono.zip

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
sudo mv squashfs-root /
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
rm nvim.appimage

git clone --depth 1 https://github.com/AstroNvim/template ~/.config/nvim
rm -rf ~/.config/nvim/.git
mkdir ~/.config/nvim/lua/user
cat .init.lua > $HOME/.config/nvim/lua/user/init.lua
cat .tmux.conf > $HOME/.tmux.conf
