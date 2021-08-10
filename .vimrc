syntax enable
syntax on
set relativenumber
set noerrorbells
set ts=4
set sw=4
set noswapfile
set termguicolors
set clipboard=unnamedplus

nnoremap <F4> :!g++ %<CR>
nnoremap <F5> :term ./a.out<CR>
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
colorscheme koehler
hi Normal guibg=NONE ctermbg=NONE
