" Required for filetype off
set nocompatible
" Required because vundle adds new filetypes. #176
filetype off
set rtp+=~/.vim/bundle/Vundle.vim 
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" Utilities
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'mbbill/undotree'
Plugin 'mattdbridges/bufkill.vim'
Plugin 'terryma/vim-multiple-cursors' " TODO : Needs configuration
" Todo, check if EditorConfig core is installed
Plugin 'editorconfig/editorconfig-vim'
if v:version >= 740
	Plugin 'SirVer/ultisnips'
endif
Plugin 'kien/rainbow_parentheses.vim'

" Visual
Plugin 'bling/vim-airline'
Plugin 'chriskempson/base16-vim'

" 42
if !filereadable("/usr/share/vim/vim73/plugin/stdheader.vim")
	Plugin 'roblabla/42vim'
endif

" Misc
Plugin 'scrooloose/syntastic' " Todo : Needs configuration
Plugin 'Shougo/neocomplete.vim'
Plugin 'myusuf3/numbers.vim'

" Language plugins
Plugin 'kchmck/vim-coffee-script'
" Plugin 'jelera/vim-javascript-syntax'
Plugin 'digitaltoad/vim-jade'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'wting/rust.vim'
Plugin 'othree/yajs.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
call vundle#end()

" Re-enable filetype
filetype plugin indent on
