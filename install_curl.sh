#! /bin/sh
echo "=============================="
echo "          VAD_VIMRC           "
echo "=============================="

echo "Installing dependecies..."
if type apt-get > /dev/null 2> /dev/null
then
  echo Detected 'apt-get': Installing packages from there.
  echo

  # Install basic dependencies
  sudo apt-get install -y ctags
  sudo apt-get install -y python3
  sudo apt-get install -y vim-gtk
  sudo apt-get install -y git
  echo "Done!"
elif type brew > /dev/null 2> /dev/null
then
  echo Detected 'brew': Installing packages from there.
  echo

  # install missing packages -- don't try to upgrade already installed packages
  function brew_install {
    if ! brew ls $1 > /dev/null 2> /dev/null
    then
      brew install $1
    fi
  }

  # Install basic dependencies
  brew_install ctags
  brew_install vim
  brew_install python3
  echo "Done!"
else
  echo "WARNING: Could not find package manager."
  echo "Make sure necessary packages are installed."
fi
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
