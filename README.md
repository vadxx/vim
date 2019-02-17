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
sudo apt-get install curl git vim-gtk clang
```
##### macOS (use [homebrew]):
```bash
brew install macvim ctags
```
### Optional:
For improve python support:
```bash
pip3 install flake8 jedi
```

For markdown live server (install [node.js] first):
```bash
npm install -g livedown
```
And press `SPC + ld` in opened .md file in vim.  
You can use [live-server]:
```bash
npm install -g live-server
```

## Keybindings (custom)
For usability, instead of `:` you can use `;`. 
#### Base
*   `SPC + q` - exit from window
*   `SPC + s` - save file
*   `SPC + [` - toggle NerdTree
*   `SPC + ]` - toggle TagBar
*   `SPC + SHIFT + [` - find file in NerdTree (or `SPC + {` )

 To explore the standard features of Vim, I recommend pressing `F1`.  
 If you don't know how to use NerdTree, toggle it, and press `?`.

#### Work with code:
*   `SPC + =` - auto format code
*   `SPC + c` - comment line(s)
*   `SPC + r` - run code
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
*   `CTRL + P` - find file
*   `/` - search in code 
*   `n` - go to next find text
*   `N` - go to prev find text
#### Extra:
*   `SPC + bg` - toggle light/dark theme
*   `SPC + ld` - togge [livedown]

## Features
*   Simple modern config;
*   Easy keybindings;
*   Minimal requirements (not needed patching fonts, support vim7+ etc);
*   Support [110+ languages](https://github.com/sheerun/vim-polyglot);
*   Syntax highlight;
*   Syntax checking error's and warnings (work after save changes in code);
*   File-tree navigation;
*   Tag-bar (needed ctags);
*   Fuzzy file finder;
*   Code [autocomplete] (please read docs);
*   Clang support;
*   Python support ([jedi], install `flake8` and  `jedi` using `pip`);
*   Java support ([javacomplete2], install `java8-jdk`);
*   Markdown live server ([livedown]);
*   Code runner;
*   Code auto formatter (indentation);
*   Snippets;
*   Version control systems (**git**, **mercurial**, **subversion** etc) integration;
*   [Emmet];
*   Code commender;
*   [EasyMotion];
*   Fixed old vim bugs (copy/paste to system clipboard etc);

## TODO
*   ~~EasyMotion integration;~~
*   Add simplified go-to definition feature;
*   Add integration with [live-server] (maybe write self plugin?);
*   ~~Replace java completions to quicker~~;
*   Improve speed opening java-files;
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
[autocomplete]:https://github.com/maralla/completor.vim
[EasyMotion]:https://github.com/easymotion/vim-easymotion
[Emmet]:https://github.com/mattn/emmet-vim
[node.js]:https://nodejs.org/en/
[livedown]:https://github.com/shime/livedown
[live-server]:https://www.npmjs.com/package/live-server
[javacomplete2]:https://github.com/artur-shaik/vim-javacomplete2
[jedi]:https://jedi.readthedocs.io/en/latest/
