#! /bin/sh
echo "=============================="
echo "          VAD_VIMRC           "
echo "=============================="
echo "\n Installing plugin manager...\n"
mkdir -p ~/.vim/autoload/
(cd ~/.vim/autoload/ && curl -O https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim)
echo "\n Installing config...\n"
(cd ~/.vim/ && curl -O https://raw.githubusercontent.com/vadxx/vim/master/vimrc)
ln -s ~/.vim/vimrc ~/.vimrc
echo "\n Installing packages...\n"
vi +PlugInstall +qall!
vi +qall!
echo "=============================="
echo "           ENJOY!             "
echo "=============================="
