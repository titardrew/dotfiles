# Install NeoVim
brew install neovim

# Download PlugInstall
curl -fLo $HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Move config file
mkdir -p $HOME/.config/nvim
cp ../init.vim $HOME/.config/nvim/

# Installing neovim-pip
pip3 install neovim, flake8

# Installing plugins
nvim +PlugInstall +qall

# Installing YCM
$HOME/.local/share/nvim/plugged/YouCompleteMe/install.py --clang-completer
