" **************************************************************************** "
"                                                                              "
"                                                         :::      ::::::::    "
"    .vimrc                                             :+:      :+:    :+:    "
"                                                     +:+ +:+         +:+      "
"    By: roblabla <robinlambertz.dev@gmail.com>      +#+  +:+       +#+         "
"                                                 +#+#+#+#+#+   +#+            "
"    Created: 2014/08/01 23:27:38 by roblabla          #+#    #+#              "
"    Updated: 2014/08/01 23:28:04 by roblabla         ###   ########.fr        "
"                                                                              "
" **************************************************************************** "

" Be iMproved
set nocompatible

" VUNDLE
" Required because vundle adds new filetypes. #176
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'roblabla/42vim'
call vundle#end()

" Enable auto-indentation
filetype plugin indent on
set autoindent

" Enable syntax highlighting
syntax on

" Set clipboard for copy-pasta
set clipboard=unnamed

" Enable OS mouse clicking
if has("mouse")
	set mouse=a
endif

" Bash-style tab completion
set wildmode=longest,list
set wildmenu

" No swap files, use version control instead
set noswapfile

" Fix bad autoindent of pasted text
" Should I Keep ? Messes some shit up
" set paste

" Show line numbers
set number

" Default to hard tabs, 4 spaces
set ts=4

" Folding
set foldmethod=syntax
set foldcolumn=1
set foldlevelstart=20

" Can backspace
set backspace=indent,eol,start

" Smart indentation
set smartindent
