set wrapmargin=8
set mouse=nicr
set number relativenumber
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
" set expandtab
set backspace=indent,eol,start
" set mouse=a

set encoding=UTF-8

let &t_8f      = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b      = "\<Esc>[48;2;%lu;%lu;%lum"

let g:python3_host_prog = '/usr/bin/python3'

syntax on

nmap <C-o> o<Esc>k

" source ~/.config/nvim/plug.vim

" source ~/.config/nvim/CustomBuildFunctions.vim

" for f in split(glob('~/.config/nvim/PluginConfigs/*.vim'), '\n')
" 	exe 'source' f
" endfor

" set rtp+=~/.config/nvim/tree.nvim/

lua require('core')
