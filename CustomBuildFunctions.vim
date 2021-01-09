
function! AnimateCPPBuild() abort
	execute "norm! :w\<CR>"
	new term://g++ -std=c++17 -Wall -Wshadow -Wextra -O2 -DAtrin % && ./a.out
	wincmd J | resize 1
	call animate#window_percent_height(0.66)
endfunction

map <F8> :w<CR>:!g++ -std=c++17 -Wall -Wshadow -Wextra -O2 -DAtrin % && ./a.out<CR>
map <F9> :call AnimateCPPBuild()<CR>

command! MakeTags !ctags -R --exclude="*/node_modules/*" .
" ^] for jump to tag
" g^] jump to ambigious tag
" ^t jump back
