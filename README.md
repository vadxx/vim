# vimrc
The simple and fast Vim configuration for c/c++, python, html/css, java.
![demo]

## Installation
```bash
    cd ~ && git clone https://github.com/vadxx/vimrc .vim && ln -s ~/.vim/vimrc ~/.vimrc
```
Install Dependecies:

**Ubuntu/Debian:**
```bash
    sudo apt-get install gcc git ctags
    sudo apt-get install vim python #optional
    pip install flake8  #optional
```
**macOS:** (install [homebrew] first)
```bash
    brew install ctags
    brew install vim    #optional
    pip install flake8  #optional
```

## Keybindings
*   `SPC + q` - exit from window
*   `SPC + s` - save file
*   `SPC + tt` - toggle NerdTree
*   `SPC + tf` - find file in NerdTree
*   `SPC + tb` - toggle TagBar
*   `SPC + f` - open fuzzy finder
*   `SPC + wt` - new tab
*   `SPC + wv` - split window vertical
*   `SPC + wh` - split window horizontal
*   `SPC + [1-9]` - go to that tab
*   `CTRL + E` - call Emmet
*   `<` and `>` - for indent line (or selected line)


## Features
*   Simple modern config;
*   Minimal requirements (not needed other fonts, support vim7+ etc);
*   Syntax highlight;
*   Syntax checking error's and warnings;
*   Code completions;
*   Easy keybindings;
*   Emmet;
*   Commender;
*   File-tree navigation;
*   Tag-bar (needed ctags);
*   Fuzzy file finder;

## Contribute
### Fork me on GitHub
I'm always happy to take pull requests from others.

[homebrew]:https://brew.sh
[vim-plug]:https://github.com/junegunn/vim-plug
[Vim]:http://www.vim.org/download.php#pc

[demo]:./demo.png

## License
MIT
