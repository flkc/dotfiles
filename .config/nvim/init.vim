call plug#begin('~/.vim/plugged')

Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-surround'
Plug 'robertmeta/nofrils'

call plug#end()

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

:tnoremap <Esc> <C-\><C-n>
