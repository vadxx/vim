#! /bin/sh
echo "=============================="
echo "          VAD_VIMRC           "
echo "=============================="

echo "Installing dependecies..."
if type apt-get > /dev/null 2> /dev/null
then
  echo Detected 'apt-get': Installing packages from there.
  echo

  # Update and install basic dependencies

  sudo apt-get update -y
  sudo apt-get install -y git
  sudo apt-get install -y clang
  sudo apt-get install -y ctags
  sudo apt-get install -y python3
  sudo apt-get install -y vim
  sudo apt-get install -y python3-pip
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

  # Update and install basic dependencies
  #xcode-select --install

  brew_install git
  brew_install ctags
  brew_install vim
  brew_install python3
  brew_install python3-pip
  echo "Done!"
else
  echo "WARNING: Could not find package manager."
  echo "Make sure necessary packages are installed."
fi
echo "Clonning Repository..."
cd ~ && git clone https://github.com/vadxx/vimrc .vim
echo "Linking with vim..."
ln -s ~/.vim/vimrc ~/.vimrc
echo "Opening vim..."
vi +PlugUpdate +qall!
vi +qall!
echo "=============================="
echo "           ENJOY!             "
echo "=============================="