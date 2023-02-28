" Configure ALE
let g:ale_fixers.python = ['black', 'isort']

autocmd FileType python set colorcolumn=110

let g:ale_python_pylint_options = "--init-hook='import sys; sys.path.append(\".\")'"

let g:ale_command_wrapper="~/wrapper.sh"

let g:ale_python_pylsp_config = {
\  'pylsp': {
\    'plugins': {
\       'pycodestyle': {
\         'enabled': v:false
\       },
\       'jedi_completion': {
\         'eager': v:true,
\         'fuzzy': v:true,
\         'include_function_objects': v:true,
\         'include_class_objects': v:true,
\       },
\     }
\   }
\ }

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <silent><expr> <S-Tab>
      \ pumvisible() ? "\<C-p>" : "\<S-TAB>"

" completion magic which silently inserts selected option and continues
inoremap <silent><expr> (
      \ pumvisible() ? "\<Enter>(" : "("
inoremap <silent><expr> .
      \ pumvisible() ? "\<Enter>." : "."
inoremap <silent><expr> =
      \ pumvisible() ? "\<Enter> = " : "="
inoremap <silent><expr> <Space>
      \ pumvisible() ? "\<Enter>\<Space>" : "\<Space>"
