pwd

rm -rf ./.git

cp -a ./.dotfiles/.config/. ~/.config
cp ./.dotfiles/.tmux.conf ~/

yes | sudo apt-get install neovim
yes | sudo apt install tmux
