call plug#begin($VIMPATH . '/plugged')

" Utilities
Plug 'scrooloose/nerdtree'
" Fuzzy Finder
if has('nvim')
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'
else
	Plug 'junegunn/fzf'
	Plug 'junegunn/fzf.vim'
endif
Plug 'tpope/vim-fugitive'

Plug 'mbbill/undotree'
Plug 'qpkorr/vim-bufkill'
Plug 'terryma/vim-multiple-cursors'
Plug 'editorconfig/editorconfig-vim'

" TODO: Find better rainbow parentheses plugin
"Plug 'kien/rainbow_parentheses.vim'
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
	" Autocomplete
	Plug 'neovim/nvim-lspconfig'
	Plug 'hrsh7th/cmp-nvim-lsp'
	Plug 'hrsh7th/nvim-cmp'
endif

" Very useful plugin, but makes vim laggy on slow connections. If your vim
" is feeling slow, comment this line out.
Plug 'myusuf3/numbers.vim'

" Language plugins
"Plugin 'derekwyatt/vim-scala'
Plug 'LnL7/vim-nix'
"Plugin 'kchmck/vim-coffee-script'
"Plugin 'elzr/vim-json'
"Plugin 'othree/yajs'
Plug 'joshglendenning/vim-caddyfile'

" Necessary for correct indent in jsx. Goes AFTER yajs, so yajs
" syntax overrides vim-javascript's.
"Plugin 'pangloss/vim-javascript'
"Plugin 'digitaltoad/vim-jade'
"Plugin 'mustache/vim-mustache-handlebars'
Plug 'rust-lang/rust.vim'
"Plugin 'octol/vim-cpp-enhanced-highlight'
"Plugin 'othree/html5.vim'
"Plugin 'peterhoeg/vim-qml'
"Plugin 'mxw/vim-jsx'
Plug 'arrufat/vala.vim'

" Need a way to disable it temporarily...
"Plug 'gregsexton/MatchTag'

"Plugin 'def-lkb/vimbufsync' " merlin dep
"Plugin 'the-lambda-church/merlin', { 'rtp': 'vim/merlin' } " TODO : Figure out how to
"                                                           " make
"Plugin 'roblabla/ocp-indent', { 'rtp': 'tools/vim' }
"Plugin 'floobits/floobits-neovim'
Plug 'jpalardy/vim-slime'

" Because I can't live without magit
Plug 'nvim-lua/plenary.nvim'
Plug 'TimUntersberger/neogit'

" Code review gitlab
let $GL_TOKEN = 'FILL ME'
Plug 'AGhost-7/critiq.vim'

if has('nvim-0.6')
	Plug 'nvim-treesitter/nvim-treesitter'
endif

Plug 'tpope/vim-scriptease'
Plug 'tpope/vim-abolish'

call plug#end()
