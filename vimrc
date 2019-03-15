"   Author: Anton Volkov - https://github.com/vadxx
"
"   MAPPINGS
"
" Make leader the spacebar key
let mapleader = " "
" < > Indent, keep selected text
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
" SPC + Shift + [  Nerd Tree Toggle s
map <Leader>{ :NERDTreeFind<CR>
" SPC + ] TagBar Toggle
nmap <Leader>] :TagbarToggle<CR>
" SPC + C  Comment line or lines
nmap <Leader>c <plug>NERDCommenterToggle
vmap <Leader>c <plug>NERDCommenterToggle gv
" SPC + =  Auto Format code
noremap <Leader>= :Autoformat<CR>
" SPC + LD  Toggle Markdown live-server
nmap <Leader>ld :LivedownToggle<CR>
" SPC + BG  Toggle Light/Dark background
nmap <Leader>bg :let &background = ( &background == "dark"? "light" : "dark" )<CR>
" SPC + \ or - or t  Window navigations
nmap <Leader>\ :vsplit<CR>
nmap <Leader>- :split<CR>
nmap <Leader>t :tabnew<CR>
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
"
"   PLUGINS
"
call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'         " Support for a lot of languages
Plug 'mhinz/vim-startify'           " Better start screen
Plug 'lifepillar/vim-gruvbox8'      " Good color scheme
Plug 'itchyny/lightline.vim'        " Bottom status line
Plug 'mhinz/vim-signify'            " See changes of file in local repo git, hg etc
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } " File-tree
Plug 'majutsushi/tagbar',   { 'on': ['TagbarToggle'] }                   " Tags-tree
Plug 'Raimondi/delimitMate'         " Auto close bracket's
Plug 'scrooloose/nerdcommenter', { 'on': '<plug>NERDCommenterToggle' }   " For comment line(s)
Plug 'mattn/emmet-vim',  { 'for': ['html', 'javascript', 'php', 'xml'] } " For Web-dev
Plug 'ap/vim-css-color', { 'for': ['css', 'scss', 'sass', 'less', 'stylus'] } " Highlight
Plug 'Shougo/neosnippet.vim' | Plug 'Shougo/neosnippet-snippets' " Snippets and Engine
Plug 'scrooloose/syntastic'         " Syntax checker
Plug 'Chiel92/vim-autoformat',{ 'on': 'Autoformat' }             " Indent fix on file
Plug 'easymotion/vim-easymotion'    " Searh in file
Plug 'ctrlpvim/ctrlp.vim'           " Search files
Plug 'shime/vim-livedown', { 'for': 'markdown' } " Install Node and: npm install -g livedown
Plug 'lifepillar/vim-mucomplete'    " Auto-complete Engine
call plug#end()
"
"   SETTINGS
"
set encoding=UTF-8  " Default encoding
set tabstop=4
set softtabstop=4   " Set tabs to have 4 spaces
set autoindent      " Indent when moving to the next line while writing code
set expandtab       " Expand tabs into spaces
set shiftwidth=4    " When using the >> or << commands, shift lines by 4 spaces
set showmatch       " Show the matching part of the pair for brackets
set autoread        " Set to auto read when a file is changed from the outside
"   LOOK
syntax on
set background=dark
color gruvbox8      " Good color scheme
let g:lightline = { 'colorscheme': 'seoul256' }        " Status line color scheme
set number          " Show numbers of lines
set relativenumber  " Better info of line (use j,k for navigate)
set cursorline      " Show current line
set showtabline=2   " Show tab line (always)
"   NERDTREE
let g:NERDTreeNodeDelimiter = "\u00a0"  " Fix delimitter in nerdtree
let g:NERDTreeIgnore=['CVS','\.dSYM$', '.git', '.DS_Store', '\.swp$', '\.swo$']
let g:NERDTreeChDirMode = 2             " Setting root dir in NT also sets VIM's cd
let g:NERDTreeShowHidden = 1            " Shows invisibles
"   SYNTAX
let g:cpp_class_scope_highlight = 1
let g:cpp_class_decl_highlight = 1      " C/C++ improve
let g:python_highlight_all = 1          " Python Improve
"   SYNTASTIC
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_aggregate_errors = 1
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
function! SyntasticCheckHook(errors) " For optimize size a list of errors and warnings
    if !empty(a:errors)
        let g:syntastic_loc_list_height = min([len(a:errors), 10])
    endif
endfunction
"   SEARCH
let g:ctrlp_cmd = 'CtrlPMixed' " Improved behavior CtrlP
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
"   EXTRA
filetype plugin indent on      " Enable file type detection and do lang-dependent indenting.
set laststatus=2               " Always show status line
set backspace=indent,eol,start " Make backspace behave in a sane manner.
map Q <Nop>
" Still keep ability to repeat a go-to
noremap ;; ;
set nocompatible               " Disable vi compatibility (emulation of old bugs)
set lazyredraw                 " Don't redraw while executing macros (good performance config)
set mouse=a                    " Mouse Support
set noshowmode                 " Get rid of the ugly default status line
let @/ = ""                    " Clear search pattern
" For qwerty it is easier tu use ; than :
map ; :
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"           " Cursor thin/bold
" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" Fix copy text to system clipboard and paste from it (for ubuntu install xsel)
nmap <C-c> "+yy
vmap <C-c> "+y
nmap <C-v> "+pa
imap <C-v> <Esc> "+pa
"   SNIPPETS
"
" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
            \ "\<Plug>(neosnippet_expand_or_jump)"
            \: pumvisible() ? "\<C-n>" : "\<TAB>"
imap <expr><S-TAB> mucomplete#extend_fwd("\<down>")
"
"   AUTOCOMPLETIONS
"
set wildmenu | set noinfercase | set completeopt=menuone,noinsert,noselect,preview
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
let g:mucomplete#chains = {
            \ 'default' : ['path', 'nsnp', 'c-n', 'keyn', 'uspl']
            \ }
let g:mucomplete#no_mappings = 1
let g:mucomplete#enable_auto_at_startup = 1

