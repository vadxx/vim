# VIM
The modern, simple and fast Vim configuration for code.<br>

| Start Screen  | Work with C++ |
| ------------- | ------------- |
| ![demo_start] |  ![demo_cpp]  |

## Installation
```bash
curl https://raw.githubusercontent.com/vadxx/vim/master/install.sh | bash
```
Or you can download a [latest release](https://github.com/vadxx/vim/releases) and extract content of archive to root user folder:
```bash
unzip ~/Downloads/vim.zip -d ~/
```
### Minimal dependencies:
##### Ubuntu:
```bash
sudo apt-get install vim-gtk
```
For run script, install `curl`, `git`.
##### Mac:
Install `MacVim`. Download it [here](https://macvim-dev.github.io/macvim/).
Link to sytem command line:
```bash
sudo ln -s /Applications/MacVim.app/Contents/bin/vim /usr/local/bin/vim
sudo ln -s /Applications/MacVim.app/Contents/bin/vim /usr/local/bin/vi
```

Install `ctags`. Download it [here][ctags]. Uncompress and install it:
```bash
cd Downloads && tar -zxvf ctags-*.tar.gz && cd ctags-*/ && ./configure && sudo make install
```
##### Windows:
Install `git`. Download it [here](https://git-scm.com). <br>
Download [latest release](https://github.com/vadxx/vim/releases). Extract to root user folder. <br>
Run `Git Bash` shortcut. Vim is preinstalled.

### Optional:
For improve [Python] support:
```bash
sudo -H pip3 install flake8
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
*   `SPC + ]` - toggle TagBar (functions definition finder in souce-code)
*   `SPC + SHIFT + [` - find current opened file using NerdTree (or `SPC + {` )<br><br>
    To explore the standard features of Vim, I recommend pressing `F1`, or `vimtutor`.<br>
    If you don't know how to use NerdTree, toggle it, and press `?`.

#### Work with code:
*   `SPC + =` - auto format code
*   `SPC + c` - comment line(s)
*   `SPC + r` - run code
*   `CTRL + e` - call [Emmet]
*   `CTRL + c` - copy text to system clipboard
*   `CTRL + v` - paste text from system clipboard
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
*   Minimal requirements (not needed patching fonts, support vim7+, not needed recompile vim etc);
*   Support [110+ languages](https://github.com/sheerun/vim-polyglot) (syntax highlight, indent's);
*   Syntax checking error's and warnings (work after save changes in code);
*   File-tree navigation;
*   List of function's declaration (in source code);
*   File finder;
*   Code [autocomplete] (please read docs);
*   Markdown live server ([livedown]);
*   Code auto formatter (indent's);
*   Snippets;
*   Version control systems (`git`, `mercurial`, `subversion` etc) integration;
*   [Emmet];
*   Code commender;
*   [EasyMotion];
*   Fixed old vim bugs (copy to system clipboard, backspace behavior etc);

## TODO
*   ~~EasyMotion integration;~~
*   ~~Windows support;~~
*   Write a project website;
*   Add installer for neovim;

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
[demo_start]:./images/demo_start.png "Demo start screen"
[demo_cpp]:./images/demo_cpp.png "Demo work with C++"
[vim-plug]:https://github.com/junegunn/vim-plug
[Vim]:http://www.vim.org/download.php#pc
[Python]:https://www.python.org
[ctags]:http://ctags.sourceforge.net
[node.js]:https://nodejs.org/en
[livedown]:https://github.com/shime/livedown
[live-server]:https://www.npmjs.com/package/live-server
[autocomplete]:prabirshrestha/asyncomplete.vim
[EasyMotion]:https://github.com/easymotion/vim-easymotion
[Emmet]:https://github.com/mattn/emmet-vim
