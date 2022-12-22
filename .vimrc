filetype plugin indent on 
syntax enable

call plug#begin()
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'dyng/ctrlsf.vim'
call plug#end()

syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set number
set colorcolumn=0
set signcolumn=no
set hlsearch
set ruler
set clipboard+=unnamed
set noswapfile
set nocursorline

" Set completeopt to have a better completion experience
set completeopt=menu,menuone,noselect

highlight Comment ctermfg=green

let mapleader = ","

" Map jk to <Esc>
inoremap jk <Esc>

" Using Ctrl-Z to save buffer
nnoremap <C-Z> :update<CR>
nnoremap <Leader>e :quit<CR>
nnoremap <Leader>w :bw<CR>
nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprevious<CR>
map <C-c> "+y

nnoremap <Leader>cs :e %:h/
nnoremap mm :nohlsearch<CR>

xmap <Leader>c  <Plug>Commentary
nmap <Leader>c  <Plug>Commentary
map <Leader>c  <Plug>Commentary
nmap <Leader>cc <Plug>CommentaryLine

nnoremap - :Ex<CR>
