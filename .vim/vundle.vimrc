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
        Plugin 'fisadev/FixedTaskList.vim'

        " Plugin 'ervandew/supertab'      " use tabs for everything

        " Common things: ALE
        Plugin 'dense-analysis/ale'

        " 3. C/C++
        " Plugin 'valloric/YouCompleteMe'
        Plugin 'rdnetto/YCM-Generator'

        " Golang
        Plugin 'fatih/vim-go'

        " 4. Pretty Vim
        Plugin 'bling/vim-airline'      " Pretty status bar

        " 5. Autocommenting
        Plugin 'tpope/vim-commentary'

        " 6. Debugging
        " Plugin 'vim-scripts/Conque-GDB'

        " 7. Code tidy
        Plugin 'embear/vim-uncrustify'

        " 8. Shell scriptiing
        " Neomake (supports shell script lint)
        Plugin 'neomake/neomake'

        " Shfmt (formats shell scripts, requires shfmt installed)
        Plugin 'z0mbix/vim-shfmt'

call vundle#end()

filetype plugin indent on
