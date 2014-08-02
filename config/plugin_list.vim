" Required for filetype off
set nocompatible
" Required because vundle adds new filetypes. #176
filetype off
set rtp+=~/.vim/bundle/Vundle.vim 
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'roblabla/42vim'
Plugin 'scrooloose/syntastic'
Plugin 'mbbill/undotree'
Plugin 'bling/vim-airline'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'bufkill'
call vundle#end()

" Re-enable filetype
filetype plugin indent on
