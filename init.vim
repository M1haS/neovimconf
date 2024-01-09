set mouse=a  " enable mouse
set relativenumber
set encoding=utf-8
set number
set noswapfile
set scrolloff=7

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix
filetype indent on      " load filetype-specific indent files

" for tabulation
set smartindent
set tabstop=4
set expandtab
set shiftwidth=4

" horizontal split open below and right
set splitbelow
set splitright

inoremap jk <esc>

call plug#begin()
    Plug 'preservim/nerdtree'
call plug#end()

autocmd TermOpen * startinsert
autocmd TermOpen * :set nonumber norelativenumber
autocmd TermOpen * nnoremap <buffer> <C-c> i<C-c>

nnoremap <space>n :NERDTreeFocus<CR>
nnoremap <space>e :NERDTreeExplore<CR>
nnoremap <space>t :let $VIM_DIR=expand('%:p:h')<CR>:terminal<CR>cd $VIM_DIR<CR>
