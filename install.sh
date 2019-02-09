#! /bin/sh
echo "=============================="
echo "          VAD_VIMRC           "
echo "=============================="
echo "Installing plugin manager..."
mkdir -p ~/.vim/autoload/
(cd ~/.vim/autoload/ && curl -O https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim)
echo "Installing config..."
(cd ~/.vim/ && curl -O https://raw.githubusercontent.com/vadxx/vim/master/vimrc)
ln -s ~/.vim/vimrc ~/.vimrc
echo "Installing packages..."
vi +PlugInstall +qall!
vi +qall!
echo "=============================="
echo "           ENJOY!             "
echo "=============================="
