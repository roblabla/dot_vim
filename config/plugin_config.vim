" Colorscheme
set background=dark
colorscheme base16-monokai

" Airline, the status line of awesome
" set guifont=Powerline_Consolas:h14:cANSI
"let g:airline_theme='base16'
" let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

if exists(":NERDTree")
"	autocmd VimEnter * call s:actionForOpen()
"	function! s:actionForOpen()
"		NERDTree
"		wincmd l
"	endfunction
"	autocmd BufCreate * call s:addingNewTab()
"	function! s:addingNewTab()
"		if winnr('$') < 2 && exists('t:NERDTreeBufName') == 0
"			NERDTree
"			wincmd l
"		endif
"	endfunction

	" Close vim if only minibufexpl and nerdtree are open
	autocmd WinEnter * call s:closeIfOnlyNerdTreeLeft()
	function! s:closeIfOnlyNerdTreeLeft()
		if (winnr("$") == 1)
			if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
				q
			endif
		end
	endfunction
endif

" UndoTree
" Open to the right
let g:undotree_WindowLayout = 3

" Syntastic
let g:syntastic_c_compiler = 'clang'
let g:syntastic_c_compiler_options = '-Wall -Wextra -Werror'
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = '-Wall -Wextra -Werror'
let g:syntastic_coffee_checkers = ['coffee', 'coffeelint']

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_ocaml_checkers = ['merlin']

" Merlin
let $PATH .= ':' . $HOME . '/.vim/bundle/merlin'

" Slime
let g:slime_target = "tmux"

" Rainbow Parentheses auto-enable
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"Remove black in rainbow parentheses
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

" Neocomplete
" let g:acp_enableAtStartup = 0
" let g:neocomplete#enable_at_startup = 1
" Smart case
let g:neocomplete#enable_smart_case = 1

" Minimum 3 letters
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" <TAB>: completion, also Ultisnip
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

" let g:UltiSnipsExpandTrigger = '<f5>'

" CtrlP
let g:ctrlp_custom_ignore = 'node_modules'
