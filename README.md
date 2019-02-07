# vim
The simple and fast Vim configuration for c/c++, python, php, html/css, javascript, java.
![demo]

## Installation (with dependecies)
Via **wget** (for Ubuntu):
```bash
wget -O https://github.com/vadxx/vim/blob/master/install_wget.sh | bash
```
Via **curl** (for macOS):
```bash
curl https://raw.githubusercontent.com/vadxx/vim/master/install_curl.sh | bash
```

#### Optional dependecies:
For python style guide help:
```
pip3 install flake8
```

## Keybindings (custom)
For comfort, instead of `:` you can use `;`. 
#### Base
*   `SPC + q` - exit from window
*   `SPC + s` - save file
*   `SPC + [` - toggle NerdTree
*   `SPC + ]` - toggle TagBar
*   `SPC + SHIFT + [` - find file in NerdTree (or `SPC + {` )

 To explore the standard features of Vim, I recommend pressing `F1`. <br>
 If you don't know how to use NerdTree, toggle it, and press `?`.

#### Work with code:
*   `SPC + =` - auto format code
*   `SPC + c` - comment line(s)
*   `CTRL + e` - call [Emmet]
*   `CTRL + c` - copy text (global)
*   `CTRL + v` - paste text (global)
*   `<` and `>` - for indent line (or selected line)
#### Window navigation:
*   `SPC + t` - new tab
*   `SPC + \ ` - split window vertical
*   `SPC + -` - split window horizontal
*   `SPC + [1-9]` - go to that tab
#### Searching:
*   `/` - search in code 
*   `n` - go to next find
*   `N` - go to prev find
#### Extra:
*   `SPC + bg` - toggle light/dark theme

## Features
*   Simple modern config;
*   Minimal requirements (not needed patching fonts, support vim7+ etc);
*   Support [110+ languages](https://github.com/sheerun/vim-polyglot);
*   Syntax highlight;
*   Syntax checking error's and warnings;
*   Code completions;
*   Code auto formatter;
*   Snippets;
*   Easy keybindings;
*   Git integration;
*   [Emmet];
*   Code commender;
*   GCC support;
*   Python support;
*   Java support;
*   PHP support;
*   File-tree navigation;
*   Tag-bar (needed ctags);
*   [EasyMotion];

## TODO
*   Improve EasyMotion integration;
*   Add simplified go to definition feature;
*   Add integration with [live-server];
*   Add more features... (you can [suggest](mailto:thevadxx@gmail.com) me);

## Contribute
### Fork me on GitHub
I'm always happy to take pull requests from others.

## License
```
MIT
```
[homebrew]:https://brew.sh
[vim-plug]:https://github.com/junegunn/vim-plug
[Vim]:http://www.vim.org/download.php#pc
[EasyMotion]:https://github.com/easymotion/vim-easymotion
[demo]:./demo.png "Demo image (start page and c++ project example)"
[Emmet]:https://github.com/mattn/emmet-vim

