call plug#begin('~/.vim/plugged')
syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set number
set hlsearch
set ruler
colorscheme peachpuff
highlight Comment ctermfg=green
highlight LineNr ctermfg=yellow

" autoclose brackets
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdcommenter'

call plug#end()
