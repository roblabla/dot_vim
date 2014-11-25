" Required for filetype off
set nocompatible
" Required because vundle adds new filetypes. #176
filetype off
set rtp+=~/.vim/bundle/Vundle.vim 
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" Utilities
Plugin 'scrooloose/nerdtree'
Plugin 'mbbill/undotree'
Plugin 'mattdbridges/bufkill.vim'
Plugin 'terryma/vim-multiple-cursors' " TODO : Needs configuration

" Visual
Plugin 'bling/vim-airline'
Plugin 'tomasr/molokai'

" 42
Plugin 'roblabla/42vim'

" Misc
Plugin 'scrooloose/syntastic' " Todo : Needs configuration
Plugin 'Shougo/neocomplete.vim'

" Language plugins
Plugin 'kchmck/vim-coffee-script'
" Plugin 'jelera/vim-javascript-syntax'
Plugin 'digitaltoad/vim-jade'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'wting/rust.vim'
call vundle#end()

" Re-enable filetype
filetype plugin indent on
