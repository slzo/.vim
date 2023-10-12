let mapleader=" "

syntax on

set number
set relativenumber
set wrap
set cursorline
set showcmd
set wildmenu

set mouse=a
set encoding=utf-8
let &t_ut=''
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
noremap = nzz
noremap - Nzz
noremap <LEADER><CR> :nohlsearch<CR>

noremap u i
noremap U I
noremap i k
noremap I 5k
noremap k j
noremap K 5j
noremap j h

map W :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>

map sj :set splitright<CR>:vsplit<CR>
map sl :set nosplitright<CR>:vsplit<CR> 
map sk :set nosplitbelow<CR>:split<CR>
map si :set splitbelow<CR>:split<CR>
map <LEADER>l <C-w>l
map <LEADER>i <C-w>k
map <LEADER>k <C-w>j
map <LEADER>j <C-w>h

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal!g'\"" | endif

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'
call plug#end()

let g:SnazzyTransparent = 1
color snazzy



