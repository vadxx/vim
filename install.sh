#! /bin/sh
echo "=============================="
echo "          VAD_VIMRC           "
echo "=============================="
echo "Installing config vim..."
mkdir ~/.vim/
mkdir ~/.vim/autoload/
(cd ~/.vim/autoload/ && curl -O https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim)
(cd ~/.vim/ && curl -O https://raw.githubusercontent.com/vadxx/vim/master/vimrc)
ln -s ~/.vim/vimrc ~/.vimrc
echo "Opening vim..."
vi +PlugInstall +qall!
vi +qall!
echo "=============================="
echo "           ENJOY!             "
echo "=============================="
