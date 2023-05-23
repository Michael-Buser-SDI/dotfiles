pwd

mkdir ~/.config/nvim/lua/user
cp ./init.lua ~/.config/nvim/lua/user/
cp ./.dotfiles/.tmux.conf ~/

yes | sudo apt-get install neovim tmux ripgrep

git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim
