" **************************************************************************** "
"                                                                              "
"                                                         :::      ::::::::    "
"    vim_config.vim                                     :+:      :+:    :+:    "
"                                                     +:+ +:+         +:+      "
"    By: roblabla </var/spool/mail/roblabla>        +#+  +:+       +#+         "
"                                                 +#+#+#+#+#+   +#+            "
"    Created: 2015/06/12 16:53:14 by roblabla          #+#    #+#              "
"    Updated: 2015/12/04 13:54:32 by roblabla         ###   ########.fr        "
"                                                                              "
" **************************************************************************** "

" Screw vim compatibility
set nocompatible

" Enable syntax highlighting
filetype plugin indent on
syntax on

" Some presentational settings
set number			" Numbers list
set showcmd			" Show current command bottom right
set showmatch		" Show matching brackets
set ruler			" Show current char in bottom right
set visualbell		" Don't friggin beep
set wildmenu		" Better command completion
set laststatus=2	" Always display status line
set cc=80			" Show 80 character bar
" Show invisible characters
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set list

" Behavior
set wildmode=longest,list		" Bash-style command completion
if exists("&wildignorecase")
	set wildignorecase				" Ignore case sensitivity for commands
endif
set ignorecase					" Same as above
set clipboard=unnamed			" * register is OS clipboard
set autowriteall				" Auto-save before :next, :make, etc...
set hidden						" TODO : Figure out wtf this does
set backspace=indent,eol,start	" Backspace over indents, eol, etc...
set mouse=a						" Enable OS mouse clicking
set autoindent					" Enable auto-indenting
set noswapfile					" No swap file, use version control instead
" set paste						" Fix bad auto-indent of pasted text.
set sts=4						" 4 column per tab key press
set ts=4						" 4 spaces per tab
set sw=4						" Reindent operation fix
" set noexpandtab					" Don't expand tab by default (stupid 42)
set autoindent					" Smart indentation

" Folding
set foldmethod=syntax
set foldcolumn=1
set foldlevelstart=20

" Encoding
set encoding=utf8

" Language config
autocmd FileType c setl noexpandtab shiftwidth=4 softtabstop=4
autocmd FileType coffee setl expandtab shiftwidth=2 softtabstop=2
autocmd FileType html setl expandtab shiftwidth=2 softtabstop=2
autocmd FileType hbs setl expandtab shiftwidth=2 softtabstop=2
autocmd FileType javascript setl expandtab shiftwidth=2 softtabstop=2
autocmd FileType jade setl expandtab shiftwidth=2 softtabstop=2
autocmd FileType json setl expandtab shiftwidth=2 softtabstop=2
if has("nvim")
	autocmd TermOpen * setl nolist
endif
let asmsyntax="nasm"

" Space Leader !
let mapleader = "\<Space>"
