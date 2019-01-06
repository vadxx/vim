" VIM CONFIG FILE

"	MAPPINGS
" Make leader the spacebar key
let mapleader = " "
" For qwerty it is easier tu use ; than :
map ; :
" Indent, keep selected text
vmap < <gv
vmap > >gv

" In normal mode F2 will save the file
nmap <F2> :w<CR>
" In insert mode F2 will exit insert, save, enters insert again
imap <F2> <ESC>:w<CR>i
" Switch between header/source with F4
map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>

" Nerd Tree
map <F2> :NERDTreeToggle<CR>
map <leader>nf :NERDTreeFind<cr>

" TagBar
nmap <F5> :TagbarToggle<CR>

" Window navigations
nmap <Leader>wv :vsplit<CR>
nmap <Leader>wh :split<CR>
nmap <Leader>wt :tabnew<CR>

" Call Emmet CTRL+E
let g:user_emmet_expandabbr_key = '<C-e>'

" Clear highlighting on escape in normal mode
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[

"	PLUGINS
call plug#begin('~/.vim/plugged')
" Support for a lot of languages
Plug 'sheerun/vim-polyglot'

" Look
Plug 'mhinz/vim-startify'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'

" Color
Plug 'morhetz/gruvbox'

" Completions
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'Shougo/deoplete-clangx'
Plug 'zchee/deoplete-jedi'
Plug 'thalesmello/webcomplete.vim'  " from the currently open web page in browser
Plug 'carlitux/deoplete-ternjs' "   for js: npm install -g tern
Plug 'Shougo/neoinclude.vim'
Plug 'ervandew/supertab'
Plug 'mattn/emmet-vim'
Plug 'lvht/phpcd.vim' " for php

" Syntax
Plug 'w0rp/ale'
Plug 'scrooloose/syntastic'
" Colors in css
Plug 'ap/vim-css-color'

" Snippets
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" Initialize plugin system
call plug#end()

"	SETTINGS
" Default encoding
set encoding=UTF-8
" Set tabs to have 4 spaces
set tabstop=4
set softtabstop=4
" Indent when moving to the next line while writing code
set autoindent
" Expand tabs into spaces
set expandtab
" When using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4
" Show the matching part of the pair for [] {} and ()
set showmatch
" Auto save file
set autoread

"	LOOK
color gruvbox
set background=dark
" Show numbers of lines
set number
set relativenumber
" Show current line
set cursorline


" COMPLETE
let g:deoplete#enable_at_startup = 1
let g:ale_completion_enabled = 1
let g:airline#extensions#ale#enabled = 1

"   SYNTASTIC
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1

let g:syntastic_c_checkers = [ 'gcc', 'make', 'clang_check', 'flawfinder' ]
let g:syntastic_python_checkers = [ 'pylint', 'flake8', 'pep8', 'pycodestyle', 'pyflakes' ]


"	SEARCH
" Search as characters are entered
set incsearch
" Highlight matches
set hlsearch
" Better searching
set ignorecase
set smartcase
" Clear search pattern
let @/ = ""

"	EXTRA
" Enable file type detection and do language-dependent indenting.
filetype plugin indent on
" Always show status line
set laststatus=2
" Make backspace behave in a sane manner.
set backspace=indent,eol,start
map Q <Nop>
" still keep ability to repeat a go-to
noremap ;; ;
" Adds x11 clipboard shortcuts
vnoremap <C-c> "+y
map <C-p> "+P
" get rid of uppercase trouble
command! W w
command! Q q
command! WQ wq
command! Wq wq
command! WA wa
command! Wa wa
command! QA qa
command! Qa qa
command! WQA wqa
command! WQa wqa
command! Wqa wqa
" disable vi compatibility (emulation of old bugs)
set nocompatible
" Mouse Support
set mouse=a
