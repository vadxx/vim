# vimrc
The simple and fast Vim configuration for c/c++, python, html/css, java.

![demo-start] ![demo-cpp]

# Features
*   Simple modern config (only .vimrc-file);
*   Minimal requirements (not needed other fonts etc, support vim7+);
*   Syntax highlight;
*   Syntax checking error's and warnings;
*   Code completions;
*   Easy keybindings;
*   File-tree navigation;
*   Tag-bar (needed ctags);

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

[demo-start]:./demo_start.png
[demo-cpp]:./demo_cpp.png
