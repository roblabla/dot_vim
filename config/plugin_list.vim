" Required for filetype off
set nocompatible
" Required because vundle adds new filetypes. #176
filetype off
set rtp+=~/.vim/bundle/Vundle.vim 
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Utilities
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'mbbill/undotree'
Plugin 'qpkorr/vim-bufkill'
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
Plugin 'jaxbot/semantic-highlight.vim'

" 42
if !filereadable("/usr/share/vim/vim73/plugin/stdheader.vim")
	Plugin 'roblabla/42vim'
endif

" Misc
if has('nvim')
	Plugin 'benekastah/neomake'
else
	Plugin 'Shougo/neocomplete.vim'
endif
Plugin 'myusuf3/numbers.vim'

" Language plugins
Plugin 'LnL7/vim-nix'
Plugin 'kchmck/vim-coffee-script'
Plugin 'elzr/vim-json'
Plugin 'othree/yajs'
" Necessary for correct indent in jsx. Goes AFTER yajs, so yajs
" syntax overrides vim-javascript's.
Plugin 'pangloss/vim-javascript'
Plugin 'digitaltoad/vim-jade'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'wting/rust.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'othree/html5.vim'
Plugin 'peterhoeg/vim-qml'
Plugin 'mxw/vim-jsx'

Plugin 'def-lkb/vimbufsync' " merlin dep
Plugin 'the-lambda-church/merlin', { 'rtp': 'vim/merlin' } " TODO : Figure out how to
                                                           " make
Plugin 'roblabla/ocp-indent', { 'rtp': 'tools/vim' }

Plugin 'jpalardy/vim-slime'

call vundle#end()

" Re-enable filetype
filetype plugin indent on
