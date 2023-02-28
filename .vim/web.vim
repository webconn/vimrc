" Configure ALE to fix HTML

set completeopt=menu,menuone,popup

let g:ale_fixers.javascript = ['eslint']
let g:ale_fixers.javascriptreact = ['eslint']
let g:ale_fixers.typescript = ['prettier']
let g:ale_fixers.css = ['prettier']
let g:ale_fixers.html = ['prettier']

let g:ale_linters={
\  'javascript': ['tsserver'],
\  'javascriptreact': ['tsserver'],
\  'python': ['pylsp', 'pylint'],
\ }

let g:ale_lsp_suggestions=1
