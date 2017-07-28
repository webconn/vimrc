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
set shiftwidth=8
set softtabstop=8
set tabstop=8

" Формат строки состояния
set statusline=%<%f%h%m%r\ %b\ %{&encoding}\ 0x\ \ %l,%c 
set laststatus=2

" Включаем "умные" отспупы ( например, автоотступ после {)
set smartindent

" Fix <Enter> for comment
set fo+=cr

" Опции сесссий
set sessionoptions=curdir,buffers,tabpages

"-------------------------
" Горячие клавишы
"-------------------------

" Пробел в нормальном режиме перелистывает страницы
nmap <Space> <PageDown>

" CTRL-F для omni completion
imap <C-F> <C-X><C-O>

" C-c and C-v - Copy/Paste в "глобальный клипборд"
vmap <C-C> "+yi
imap <C-V> <esc>"+gPi

" Заставляем shift-insert работать как в Xterm
map <S-Insert> <MiddleMouse>

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

" F2 - показать окно Taglist
map <F2> :TlistToggle<cr>
vmap <F2> <esc>:TlistToggle<cr>
imap <F2> <esc>:TlistToggle<cr>

" F3 - просмотр ошибок
nmap <F3> :copen<cr>
vmap <F3> <esc>:copen<cr>
imap <F3> <esc>:copen<cr>

" F5 - просмотр списка буферов
nmap <F5> <Esc>:BufExplorer<cr>
vmap <F5> <esc>:BufExplorer<cr>
imap <F5> <esc><esc>:BufExplorer<cr>

" F6 - close current buffer
map <F6> :bd<cr>
vmap <F6> <esc>:bd<cr>i
imap <F6> <esc>:bd<cr>i

" F8 - список закладок
map <F8> :MarksBrowser<cr>
vmap <F8> <esc>:MarksBrowser<cr>
imap <F8> <esc>:MarksBrowser<cr>

" F9 - "make" команда (а также запуск редактируемого скрипта)
map <F9> :make<cr>
vmap <F9> <esc>:make<cr>i
imap <F9> <esc>:make<cr>i

" F10 - удалить буфер
map <F10> :bd<cr>
vmap <F10> <esc>:bd<cr>
imap <F10> <esc>:bd<cr>

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

let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

" Слова откуда будем завершать
set complete=""
" Из текущего буфера
set complete+=.
" Из словаря
set complete+=k
" Из других открытых буферов
set complete+=b
" из тегов 
set complete+=t

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

" Настройки для SessionMgr
" let g:SessionMgr_AutoManage = 0
" let g:SessionMgr_DefaultName = "mysession"

" Настройки для Tlist (показвать только текущий файл в окне навигации по  коду)
let g:Tlist_Show_One_File = 1

set completeopt-=preview
set completeopt+=longest
set mps-=[:]

" Save folds
autocmd BufWinLeave,BufWrite,BufLeave *.* mkview
autocmd BufRead,BufEnter,BufWinEnter,BufWritePost *.* silent loadview 
set viewoptions-=options
set sessionoptions-=options

" External configuration
" let g:localvimrc_debug = 1
let g:localvimrc_sandbox = 0
let g:localvimrc_persistent = 1

so ~/.vim/vundle.vimrc

" Configure Airline
so ~/.vim/airline.vimrc

" Global filetype mods
so ~/.vim/filetype.vim

" Python configuration
so ~/.vim/python.vim

" Add tags
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/qt4

" "set langmap=Ж:,йq,цw,уe,кr,еt,нy,гu,шi,щo,зp,х[,ъ],фa,ыs,вd,аf,пg,рh,оj,лk,дl,э',яz,чx,сc,мv,иb,тn,ьm,б\,ю.,ё`
"
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

" C/C++ autocomplete file
let g:ycm_global_ycm_extra_conf = "~/.vim/ycm_extra_conf.py"
