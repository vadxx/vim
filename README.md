# VIM
The simple and fast Vim configuration for c/c++, python, php, html/css, javascript, java.
![demo]

## Installation
```bash
curl https://raw.githubusercontent.com/vadxx/vim/master/install.sh | bash
```

### Minimal dependencies:
##### Ubuntu:
```bash
sudo apt-get install vim-nox
```
###### Optional:
```bash
sudo apt-get install python3 clang
```
##### macOS:
```bash
brew install ctags
```
###### Optional:
```bash
brew install python
```
For python style guide help:
```bash
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
*   Syntax checking error's and warnings (work after save changes);
*   Code [completor] (please read docs);
*   Code auto formatter;
*   Snippets;
*   Easy keybindings;
*   Git integration;
*   [Emmet];
*   Code commender;
*   File-tree navigation;
*   Tag-bar (needed ctags);
*   [EasyMotion];
*   Fixed old vim bugs (copy/paste to system clipboard etc);

## TODO
*   Improve EasyMotion integration;
*   Add simplified go to definition feature;
*   Add integration with [live-server];
*   Add more features... (you can [suggest](mailto:thevadxx@gmail.com) me);

## Uninstallation
```bash
rm -rf ~/.vim ~/.vimrc
```
## Contribute
### Fork me on GitHub
I'm always happy to take pull requests from others.

## License
```
MIT
```
[demo]:./demo.png "Demo image (start page and c++ project example)"
[homebrew]:https://brew.sh
[vim-plug]:https://github.com/junegunn/vim-plug
[Vim]:http://www.vim.org/download.php#pc
[EasyMotion]:https://github.com/easymotion/vim-easymotion
[Emmet]:https://github.com/mattn/emmet-vim
[live-server]:https://www.npmjs.com/package/live-server
[completor]:https://github.com/maralla/completor.vim
