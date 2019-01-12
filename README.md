# vimrc
The simple and fast Vim configuration for c/c++, python, html/css, java.
![demo]
# Features
*   Simple modern config (only one vimrc-file);
*   Minimal requirements (not needed other fonts, support vim7+ etc);
*   Syntax highlight;
*   Syntax checking error's and warnings;
*   Code completions;
*   Easy keybindings;
*   File-tree navigation;
*   Tag-bar (needed ctags);

# Requirements
    [Vim] 7+.
**Ubuntu/Debian:**
```
    Git, gcc, ctags.
```    
**macOS:**
```
    Command-line Tools, ctags.
```
# Installation
Linux, \*nix, macOS:
Install [vim-plug],then:
```bash
    git clone https://github.com/vadxx/vimrc
    cp ./vimrc/.vimrc ~/.vimrc
```
Open your vim and type:
```vim
    :PlugInstall
```
Reload your vim.

# Dependecies
**Ubuntu/Debian:**
```bash
    sudo apt-get install gcc git ctags
```
Optional:
```bash
    sudo apt-get install vim python
    pip install flake8
```
**macOS:**
Install [homebrew] first, then:
```bash
    brew install ctags
```
Optional:
```bash
    brew install vim
    pip install flake8
```
# Keybindings
Soon...

# Contribute
### Fork me on GitHub
I'm always happy to take pull requests from others.

[homebrew]:https://brew.sh
[vim-plug]:https://github.com/junegunn/vim-plug
[Vim]:http://www.vim.org/download.php#pc

[demo]:./demo.png
