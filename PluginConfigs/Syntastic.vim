" Python
" Syntastic Python 3 config
" use pip install flake8
let g:syntastic_python_checkers = ['flake8']

let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']

" javascript
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_typescript_checkers = ['eslint']
let g:syntastic_vue_checkers        = ['eslint']
let g:javascript_plugin_flow        = 1
" c
let g:syntastic_c_checkers = ['']

" c++ latest
let g:syntastic_cpp_compiler         = 'g++'
let g:syntastic_cpp_compiler_options = ' -std=c++17 -Wall -Wextra -Wshadow -O2 -DAtrin '
