" Python
" let g:neoformat_python_autopep8 = {
"       \ 'exe': 'autopep8',
"       \ 'args': ['-s 4', '-E'],
"       \ 'replace': 1, " replace the file, instead of updating buffer (default: 0),
"       \ 'stdin': 1, " send data to stdin of formatter (default: 0)
"       \ 'env': ["DEBUG=1"], " prepend environment variables to formatter command
"       \ 'valid_exit_codes': [0, 23],
"       \ 'no_append': 1
"       \ }

let g:neoformat_enabled_python = ['autopep8', 'yapf', 'docformatter']

" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

let g:neoformat_run_all_formatters = 1


" let &verbose            = 1 " also increases verbosity of the editor as a whole

" Java
let g:neoformat_enabled_java = ['prettier']

" Kotlin
let g:neoformat_enabled_kotlin = ['prettier']

" Javascript
" let g_neoformat_enabled_javascript = ['js-beautify', 'prettier', 'prettydiff', 'clang-format', 'esformatter', 'prettier-eslint', 'eslint_d', 'standard', 'semistandard', 'deno fmt']
let g:neoformat_enabled_javascript = ['js-beautify', 'prettier', 'prettier-eslint', 'eslint_d']
let g:neoformat_enabled_vue = ['prettier', 'tslint', 'eslint_d', 'prettier-eslint', 'js-beautify']
let g:neoformat_enabled_typescript = ['prettier', 'tslint', 'eslint_d']

" C/C++
let g:neoformat_enabled_cpp = ['clang-formatter']
let g:neoformat_enabled_c = ['clang-formatter']

" CSS
let g:neoformat_enabled_css = ['prettier']
augroup fmt
	autocmd!
	autocmd BufWritePre * undojoin | Neoformat
augroup END
