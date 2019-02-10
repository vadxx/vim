"   VIM CONFIG FILE
" Author: Anton Volkov - https://github.com/vadxx
"
"   MAPPINGS
" Make leader the spacebar key
let mapleader = " "
" Indent, keep selected text
vmap < <gv
vmap > >gv
" SPC + Q  Exit from file
nmap <Leader>q :q!<CR>
" SPC + S  Save file
nmap <Leader>s :w<CR>
" SPC + X Save file and exit
nmap <Leader>x :x<CR>
" SPC + R Quick run code
map <Leader>r <Plug>(quickrun)
" SPC + [  Nerd Tree Toggle
map <Leader>[ :NERDTreeToggle<CR>
" SPC + Shift + [  Nerd Tree Toggle
map <Leader>{ :NERDTreeFind<cr>
" SPC + ] TagBar
nmap <Leader>] :TagbarToggle<CR>
" SPC + F  Show files menu
map <Leader>f :Files<CR>
" SPC + C  Comment line or lines
nmap <Leader>c <plug>NERDCommenterToggle
vmap <Leader>c <plug>NERDCommenterToggle gv
" SPC + W  Window navigations
nmap <Leader>\ :vsplit<CR>
nmap <Leader>- :split<CR>
nmap <Leader>t :tabnew<CR>
" CTRL + E  Call Emmet
let g:user_emmet_expandabbr_key = '<C-e>'
" n and N  Go to prev/next result of finding
map n <Plug>(easymotion-next)
map N <Plug>(easymotion-prev)
" SPC + 1...9  Go to that tab
map <silent> <Leader>1 1gt
map <silent> <Leader>2 2gt
map <silent> <Leader>3 3gt
map <silent> <Leader>4 4gt
map <silent> <Leader>5 5gt
map <silent> <Leader>6 6gt
map <silent> <Leader>7 7gt
map <silent> <Leader>8 8gt
map <silent> <Leader>9 9gt
" SPC + I  Auto Format code
noremap <Leader>= :Autoformat<CR>
" SPC + BG  Toggle Light/Dark background
nmap <Leader>bg :let &background = ( &background == "dark"? "light" : "dark" )<CR>
"   PLUGINS
call plug#begin('~/.vim/plugged')
" Support for a lot of languages
Plug 'sheerun/vim-polyglot'
" Look
Plug 'mhinz/vim-startify'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
Plug 'mhinz/vim-signify'
" Color
Plug 'lifepillar/vim-gruvbox8'
" Completions
Plug 'ervandew/supertab'
Plug 'mattn/emmet-vim', { 'for': ['html', 'javascript'] }
Plug 'scrooloose/nerdcommenter'
if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
    Plug 'Shougo/deoplete.nvim' |  Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc' " if not work : pip3 install --user pynvim
endif
Plug 'Shougo/deoplete-clangx', { 'for': ['c', 'cpp'] }
Plug 'artur-shaik/vim-javacomplete2', { 'for': 'java' }
Plug 'zchee/deoplete-jedi', { 'for': 'python' }
Plug 'lvht/phpcd.vim', { 'for': 'php' }
" Snippets
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
" Syntax
Plug 'scrooloose/syntastic'
Plug 'Chiel92/vim-autoformat'
" Colors in css
Plug 'ap/vim-css-color', { 'for': ['css', 'scss', 'sass', 'less', 'stylus'] }
" Search
Plug 'easymotion/vim-easymotion'
Plug 'ctrlpvim/ctrlp.vim'
" Extra
Plug 'thinca/vim-quickrun'
"
call plug#end()
"   SETTINGS
set encoding=UTF-8  " Default encoding
set tabstop=4       " Set tabs to have 4 spaces
set softtabstop=4
set autoindent      " Indent when moving to the next line while writing code
set expandtab       " Expand tabs into spaces
set shiftwidth=4    " When using the >> or << commands, shift lines by 4 spaces
set showmatch       " Show the matching part of the pair for [] {} and ()
"   LOOK
color gruvbox8
set background=dark
let g:lightline = { 'colorscheme': 'seoul256' }
" Show numbers of lines
set number
set relativenumber
set cursorline      " Show current line
set showtabline=2   " Show tab line
set listchars=tab:│·,trail:_    " Show tabs
"   COMPLETE
set wildmenu
let g:deoplete#auto_completion_start_length = 2
let g:JavaComplete_UseFQN = 1
let g:deoplete#enable_at_startup = 1
"   SYNTAX
let g:syntastic_enable_signs=1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_aggregate_errors = 1
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
"   SEARCH
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
"   EXTRA
filetype plugin indent on       " Enable file type detection and do language-dependent indenting.
set laststatus=2                " Always show status line
set backspace=indent,eol,start  " Make backspace behave in a sane manner.
map Q <Nop>
" Still keep ability to repeat a go-to
noremap ;; ;
" Fix copy text to clipboard    (update vim or use macvim/vim-gtk)
nmap <C-c> "+yy
vmap <C-c> "+y
nmap <C-v> "+pa
imap <C-v> <Esc>"+pa
set nocompatible                " Disable vi compatibility (emulation of old bugs)
set mouse=a                     " Mouse Support
set noshowmode                  " Get rid of the ugly default status line
let g:NERDTreeNodeDelimiter = "\u00a0"  " Fix delimitter in nerdtree
let NERDTreeIgnore=['CVS','\.dSYM$', '.git', '.DS_Store', '\.swp$', '\.swo$']
let NERDTreeChDirMode=2         " Setting root dir in NT also sets VIM's cd
let g:NERDTreeShowHidden=1      " Shows invisibles
let @/ = ""                     " Clear search pattern
" For qwerty it is easier tu use ; than :
map ; :
set completeopt-=preview        " Disable preview mode
let &t_SI = "\e[6 q"            " Cursor thin/bold
let &t_EI = "\e[2 q"
