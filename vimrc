" VIM CONFIG FILE

"	MAPPINGS
" Make leader the spacebar key
let mapleader = " "

" Indent, keep selected text
vmap < <gv
vmap > >gv

" SPC + Q  Exit from file
nmap <Leader>q :q!<CR>

" SPC + S  Save file
nmap <Leader>s :w<CR>
" Switch between header/source with F6
map <F6> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>

" SPC + TT  Nerd Tree Toggle
map <Leader>tt :NERDTreeToggle<CR>
" SPC + TF  Nerd Tree Toggle
map <Leader>tf :NERDTreeFind<cr>

" SPC + TB  TagBar
nmap <Leader>tb :TagbarToggle<CR>

map <Leader>f  :Files<CR>
" SPC + C  Comment line or lines
nmap <Leader>c <plug>NERDCommenterToggle
vmap <Leader>c <plug>NERDCommenterToggle gv
nmap <Leader>C <plug>NERDCommenterToggle
vmap <Leader>C <plug>NERDCommenterToggle gv

" SPC + W  Window navigations
nmap <Leader>wv :vsplit<CR>
nmap <Leader>wh :split<CR>
nmap <Leader>wt :tabnew<CR>

" CTRL + E  Call Emmet 
let g:user_emmet_expandabbr_key = '<C-e>'

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
Plug 'airblade/vim-gitgutter'
" Color
Plug 'morhetz/gruvbox'
" Completions
Plug 'maralla/completor.vim'
Plug 'Shougo/neoinclude.vim'
Plug 'ervandew/supertab'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
" Snippets
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
" Syntax
Plug 'scrooloose/syntastic'
" Colors in css
Plug 'ap/vim-css-color'
" Search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
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

"	LOOK
color gruvbox
set background=dark
let g:lightline = {'colorscheme': 'seoul256'}
" Show numbers of lines
set number
set relativenumber
" Show current line
set cursorline
" Show tab line
set showtabline=2
" Show tabs
set listchars=tab:│·,trail:_

"   SYNTASTIC
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_aggregate_errors = 1

"	SEARCH
" Search as characters are entered
set incsearch
" Highlight matches
set hlsearch
" Better searching
set ignorecase
set smartcase

"	EXTRA
" Enable file type detection and do language-dependent indenting.
filetype plugin indent on
" Always show status line
set laststatus=2
" Make backspace behave in a sane manner.
set backspace=indent,eol,start
map Q <Nop>
" Still keep ability to repeat a go-to
noremap ;; ;
" Adds x11 clipboard shortcuts
vnoremap <C-c> "+y
map <C-p> "+P
" Get rid of uppercase trouble
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
" Get rid of the ugly default status line
set noshowmode
" Redraw only when necessary
set lazyredraw
" Fix delimitter in nerdtree
let g:NERDTreeNodeDelimiter = "\u00a0"
let NERDTreeIgnore=['CVS','\.dSYM$', '.git', '.DS_Store', '\.swp$', '\.swo$']
"setting root dir in NT also sets VIM's cd
let NERDTreeChDirMode=2
" Shows invisibles
let g:NERDTreeShowHidden=1
" Clear search pattern
let @/ = ""
" For qwerty it is easier tu use ; than :
map ; :

