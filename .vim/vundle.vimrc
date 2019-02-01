" Vundle configuration

filetype off            " required only for plugins installation

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

        Plugin 'gmarik/Vundle.vim'

        " 0. Local vimrc
        Plugin 'embear/vim-localvimrc'

        " Speeding up folds and other things
        Plugin 'Konfekt/FastFold'

        " 1. Navigation
        Plugin 'scrooloose/nerdtree'    " files tree
        Plugin 'majutsushi/tagbar'      " tags tree
        Plugin 'fisadev/FixedTaskList.vim'

        " Plugin 'ervandew/supertab'      " use tabs for everything

        " 2. Python
        Plugin 'klen/python-mode'       " Python mode
        Plugin 'davidhalter/jedi-vim'   " Autocomplete for Python

        " 3. C/C++
        "Plugin 'justmao945/vim-clang'   " Autocomlete for C/C++
        " Plugin 'vim-scripts/opencl.vim'
        Plugin 'valloric/YouCompleteMe'
        Plugin 'rdnetto/YCM-Generator'

        " Golang
        Plugin 'fatih/vim-go'

        " JSON
        " Plugin 'Shougo/unite.vim'
        " Plugin 'Quramy/vison'

        " 4. Pretty Vim
        Plugin 'bling/vim-airline'      " Pretty status bar

        " 5. Autocommenting
        Plugin 'tpope/vim-commentary'

        " 6. Debugging
        Plugin 'vim-scripts/Conque-GDB'

        " 7. Code tidy
        Plugin 'embear/vim-uncrustify'

call vundle#end()

filetype plugin indent on
