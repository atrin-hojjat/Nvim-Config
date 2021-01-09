
" Auto Resize config
" To desable :
" let g:lens#disabled = 1
let g:lens#disabled_filetypes = [ 'nerdtree', 'fzf' ]
" nmap <leader>l :let g:lens#disabled = 1<CR>
nmap <leader>rl :call lens#toggle()<CR>
