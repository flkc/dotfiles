set number

call plug#begin(stdpath('data') . '/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/seoul256.vim'
Plug 'robertmeta/nofrils'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

call plug#end()

let g:seoul256_background = 236
colo seoul256
