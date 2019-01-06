# vimrc
The simple Vim configuration for c/c++, python, web.

![demo-img]

# Requirements
## Linux, \*nix
### Ubuntu/Debian
```bash
    sudo apt-get install gcc git clang ctags
```
Optional (update [vim])
```bash
    sudo apt-get install vim python
    pip install flake8
```

## macOS
Install [homebrew] first, then in terminal:
```bash
    brew install ctags
```
Optional (update [vim])
```bash
    brew install vim
    pip install flake8
```

# Installation
## Linux, \*nix, MacOS Installation
Install [vim-plug]. 
And run this commands in terminal:
```bash
    git clone https://github.com/vadxx/vimrc
    cp ./vimrc/.vimrc ~/.vimrc
```
Open your vim and type:
```bash
    :PlugInstall
```

# Contribute
### Fork me on GitHub
I'm always happy to take pull requests from others.

[homebrew]:https://brew.sh
[vim-plug]:https://github.com/junegunn/vim-plug
[vim]:http://www.vim.org/download.php#pc

[demo-img]:./demo.png
