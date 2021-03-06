# Setup file for local ubuntu machine
# Uses *apt-get* inside.

# Install neovim
source ../vim/setup_vim_linux.sh

# Install zsh
source ../zsh/setup_zsh_linux.sh

# Install fonts
source ../fonts/setup_font_linux.sh

# Install virtualenvwrapper
pip3 install virtualenv
pip3 install virtualenvwrapper
