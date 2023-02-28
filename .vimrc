"-------------------------
" Базовые настройки
"-------------------------

" Делаем принудительный тёмный фон
set background=dark

" Включаем несовместимость настроек с Vi (ибо Vi нам и не понадобится).
set nocompatible

" Показывать положение курсора всё время.
set ruler  

" Показывать незавершённые команды в статусбаре
set showcmd  

" Включаем нумерацию строк
set nu
set relativenumber

" Фолдинг по отсупам
set foldmethod=indent

" Поиск по набору текста (очень полезная функция)
set incsearch

" Highlight found matches
set hlsearch

" Теперь нет необходимости передвигать курсор к краю экрана, чтобы подняться в режиме редактирования
set scrolljump=7

" Теперь нет необходимости передвигать курсор к краю экрана, чтобы опуститься в режиме редактирования
set scrolloff=7

" Выключаем надоедливый "звонок"
set novisualbell
set t_vb=   

" Поддержка мыши
"set mouse=a
"set mousemodel=popup

" Кодировка текста по умолчанию
set termencoding=utf-8

" Не выгружать буфер, когда переключаемся на другой
" Это позволяет редактировать несколько файлов в один и тот же момент без необходимости сохранения каждый раз
" когда переключаешься между ними
set hidden

" Скрыть панель в gui версии ибо она не нужна
set guioptions-=T

" Сделать строку команд высотой в одну строку
set ch=1

" Скрывать указатель мыши, когда печатаем
"set mousehide

" Включить автоотступы
set autoindent

" Влючить подстветку синтаксиса
syntax on

" enable mouse
set mouse=a

" Преобразование Таба в пробелы
set expandtab

" Размер табулации по умолчанию
set shiftwidth=2
set softtabstop=2
set tabstop=2

" Формат строки состояния
set statusline=%<%f%h%m%r\ %b\ %{&encoding}\ 0x\ \ %l,%c 
set laststatus=2

" Включаем "умные" отспупы ( например, автоотступ после {)
set smartindent

" Fix <Enter> for comment
set fo+=cr

" Опции сесссий
set sessionoptions=buffers,tabpages

"-------------------------
" Горячие клавишы
"-------------------------

" Пробел в нормальном режиме перелистывает страницы
nmap <Space> <PageDown>

" C-c and C-v - Copy/Paste в "глобальный клипборд"
vmap <C-C> "+yi
imap <C-V> <esc>"+gPi

" Поиск и замена слова под курсором
nmap ;; :%s/\<<c-r>=expand("<cword>")<cr>\>/

" double \ - comment out a line or block
nmap \\ :Commentary<cr>
vmap \\ :Commentary<cr>

" . and , - current and next buffers
nmap , :bp<cr>
vmap , :bp<cr><C-V>

nmap . :bn<cr>
vmap . :bn<cr><C-V>

" F3 - просмотр ошибок
nmap <F3> :copen<cr>
vmap <F3> <esc>:copen<cr>
imap <F3> <esc>:copen<cr>

" F6 - close current buffer
map <F6> :bd<cr>
vmap <F6> <esc>:bd<cr>i
imap <F6> <esc>:bd<cr>i

" F9 - "make" команда (а также запуск редактируемого скрипта)
map <F9> :make<cr>
vmap <F9> <esc>:make<cr>i
imap <F9> <esc>:make<cr>i

" F12 - обозреватель файлов
map <F12> :Ex<cr>
vmap <F12> <esc>:Ex<cr>i
imap <F12> <esc>:Ex<cr>i

" < & > - делаем отступы для блоков
vmap < <gv
vmap > >gv

" Выключаем ненавистный режим замены
imap <Ins> <Esc>i

" Меню выбора кодировки текста (koi8-r, cp1251, cp866, utf8)
set wildmenu
set wildmode=list:full

set wcm=<Tab> 
menu Encoding.koi8-r :e ++enc=koi8-r<CR>
menu Encoding.windows-1251 :e ++enc=cp1251<CR>
menu Encoding.cp866 :e ++enc=cp866<CR>
menu Encoding.utf-8 :e ++enc=utf8 <CR>

" Редко когда надо [ без пары =)
" imap [ []<LEFT>
" Аналогично и для {
imap {<CR> {<CR>}<Esc>O

" let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

" Включаем filetype плугин. Настройки, специфичные для определынных файлов мы разнесём по разным местам
" filetype plugin on
au BufRead,BufNewFile *.phps    "set filetype=php
au BufRead,BufNewFile *.thtml   "set filetype=php
au BufRead,BufNewFile *.s	"set filetype=nasm
au BufRead,BufNewFile *.asm	"set filetype=nasm
au BufRead,BufNewFile *.S       "set filetype=asm

" F9 - "make" команда (а также запуск редактируемого скрипта)
au BufRead,BufNewFile *.pl,*.py      map <F9> :!./%<cr>
au BufRead,BufNewFile *.pl,*.py      vmap <F9> <esc>:!./%<cr>i
au BufRead,BufNewFile *.pl,*.py      imap <F9> <esc>:!./%<cr>i

" Set current directory for current file
autocmd BufEnter * silent! lcd %:p:h

" Настройки для SessionMgr
" let g:SessionMgr_AutoManage = 0
" let g:SessionMgr_DefaultName = "mysession"

" Настройки для Tlist (показвать только текущий файл в окне навигации по  коду)
let g:Tlist_Show_One_File = 1

set completeopt-=preview
set completeopt+=longest
set mps-=[:]

" Save folds
"autocmd BufRead,BufEnter,BufWinEnter,BufWritePost *.* silent loadview 
autocmd BufWinLeave,BufWrite,BufLeave *.* mkview
autocmd BufWritePost,BufRead *.* silent loadview 
set viewoptions-=options
"set sessionoptions=buffers,tabpages

" External configuration
" let g:localvimrc_debug = 1
let g:localvimrc_sandbox = 0
let g:localvimrc_persistent = 1

" ALE common configuration
let g:ale_fixers = {}

so ~/.vim/vundle.vimrc

" Configure Airline
so ~/.vim/airline.vimrc

" Global filetype mods
so ~/.vim/filetype.vim

" Python configuration
so ~/.vim/python.vim

" Web configuration
so ~/.vim/web.vim

" Neomake configuration
so ~/.vim/neomake.vim

" # Function to permanently delete views created by 'mkview'
function! MyDeleteView()
    let path = fnamemodify(bufname('%'),':p')
    " vim's odd =~ escaping for /
    let path = substitute(path, '=', '==', 'g')
    if empty($HOME)
    else
        let path = substitute(path, '^'.$HOME, '\~', '')
    endif
    let path = substitute(path, '/', '=+', 'g') . '='
    " view directory
    let path = &viewdir.'/'.path
    call delete(path)
    echo "Deleted: ".path
endfunction

" # Command Delview (and it's abbreviation 'delview')
command Delview call MyDeleteView()
" Lower-case user commands: http://vim.wikia.com/wiki/Replace_a_builtin_command_using_cabbrev
cabbrev delview <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'Delview' : 'delview')<CR>

" Go to (ff)
map ff :ALEGoToDefinition<CR>
" Move back
map fr <c-o>
" Move forward
map fv <c-i>

" Show type of object
"map ft :YcmCompleter GetType<CR>

" ConqueGdb
let g:ConqueTerm_Color = 2
let g:ConqueTerm_CloseOnEnd = 1
let g:ConqueTerm_CWInsert = 1
let g:ConqueTerm_InsertOnEnter = 1
let g:ConqueTerm_ReadUnfocused = 1

" Uncrustify
" autocmd BufWritePre <buffer> if (&filetype == 'cpp') | call Uncrustify() | endif

" FastFold
nmap zuz <Plug>(FastFoldUpdate)
let g:fastfold_savehook = 1
" let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
let g:fastfold_fold_command_suffixes = []
let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']

" Vimdiff other colorscheme
colorscheme industry

" make popup menu colors better
highlight Pmenu ctermbg=darkgray

let g:ale_lint_on_enter = 1
let g:ale_fix_on_save = 1

let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1

" ALE completion (may conflict with YCM)
let g:ale_completion_enabled = 1
set omnifunc=ale#completion#OmniFunc
