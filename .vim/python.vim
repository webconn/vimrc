" Configure ALE
let g:ale_fixers.python = ['black', 'isort']

autocmd FileType python set colorcolumn=110

let g:ale_python_pylint_options = "--init-hook='import sys; sys.path.append(\".\")'"

let g:ale_python_pylsp_config = {
\  'pylsp': {
\    'plugins': {
\       'pycodestyle': {
\         'enabled': v:false
\       }
\     }
\   }
\ }

" inoremap <silent><expr> <Tab>
      " \ pumvisible() ? "\<C-n>" : "\<TAB>"
