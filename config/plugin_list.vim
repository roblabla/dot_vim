call plug#begin($VIMPATH . '/plugged')

" Utilities
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'mbbill/undotree'
Plug 'qpkorr/vim-bufkill'
"Plugin 'terryma/vim-multiple-cursors' " TODO : Needs configuration
"" Todo, check if EditorConfig core is installed
Plug 'editorconfig/editorconfig-vim'
if v:version >= 740
	Plug 'SirVer/ultisnips'
endif
" TODO: Find better rainbow parentheses plugin
"Plugin 'kien/rainbow_parentheses.vim'
Plug 'airblade/vim-gitgutter'

"" Visual
Plug 'bling/vim-airline'
Plug 'justinmk/molokai'
Plug 'jaxbot/semantic-highlight.vim'

" 42
if !filereadable("/usr/share/vim/vim73/plugin/stdheader.vim")
	Plug 'roblabla/42vim'
endif

" Misc
if has('nvim')
	Plug 'benekastah/neomake'
	Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
	" Optional dep for symbol detection
	Plug 'junegunn/fzf'
	Plug 'shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
	Plug 'Shougo/neocomplete.vim'
endif

" Very useful plugin, but makes vim laggy on slow connections. If your vim
" is feeling slow, comment this line out.
Plug 'myusuf3/numbers.vim'

" Language plugins
"Plugin 'derekwyatt/vim-scala'
"Plugin 'LnL7/vim-nix'
"Plugin 'kchmck/vim-coffee-script'
"Plugin 'elzr/vim-json'
"Plugin 'othree/yajs'
Plug 'joshglendenning/vim-caddyfile'

" Necessary for correct indent in jsx. Goes AFTER yajs, so yajs
" syntax overrides vim-javascript's.
"Plugin 'pangloss/vim-javascript'
"Plugin 'digitaltoad/vim-jade'
"Plugin 'mustache/vim-mustache-handlebars'
Plug 'wting/rust.vim'
Plug 'Shougo/neco-vim'
"Plugin 'octol/vim-cpp-enhanced-highlight'
"Plugin 'othree/html5.vim'
"Plugin 'peterhoeg/vim-qml'
"Plugin 'mxw/vim-jsx'

Plug 'gregsexton/MatchTag'

"Plugin 'def-lkb/vimbufsync' " merlin dep
"Plugin 'the-lambda-church/merlin', { 'rtp': 'vim/merlin' } " TODO : Figure out how to
"                                                           " make
"Plugin 'roblabla/ocp-indent', { 'rtp': 'tools/vim' }
"Plugin 'floobits/floobits-neovim'
Plug 'jpalardy/vim-slime'

call plug#end()
