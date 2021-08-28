" For JSON and JS files - set indent to 2
" autocmd FileType js,json setlocal sw=2 ts=2 softtabstop=2

" Configure Go autocomplete
" let g:go_fmt_command = "goimports"
" let g:go_highlight_functions = 1
" let g:go_highlight_methods = 1
" let g:go_highlight_structs = 1

" let g:ycm_add_preview_to_completeopt = 0
" let g:ycm_auto_trigger = 1

" set completeopt-=preview

" let g:completor_go_omni_trigger = '(?:\b[^\W\d]\w*|[\]\)])\.(?:[^\W\d]\w*)?'


" Configure automatical removing trailing whitespaces from file

autocmd BufWritePre *.cpp,*.c,*.h :%s/\s\+$//e
au BufNewFile,BufRead Jenkinsfile setf groovy
