" Colorscheme
set background=dark
"let base16colorspace=256
colorscheme molokai

" Airline, the status line of awesome
" set guifont=Powerline_Consolas:h14:cANSI
" let g:airline_theme='base16'
let g:airline_powerline_fonts = 1
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

" Merlin
let $PATH .= ':' . $HOME . '/.vim/bundle/merlin'

" Slime
let g:slime_target = "tmux"

" Rainbow Parentheses auto-enable
"au VimEnter * RainbowParenthesesToggle
"au Syntax * RainbowParenthesesLoadRound
"au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces

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


" Neomake
let g:neomake_error_sign = {
            \ 'text': '>>',
            \ 'texthl': 'ErrorMsg',
            \ }
hi MyWarningMsg ctermbg=3 ctermfg=0
let g:neomake_warning_sign = {
            \ 'text': '>>',
            \ 'texthl': 'MyWarningMsg',
            \ }

" stdheader
let g:stdheader_user = "roblabla"
let g:stdheader_mail = "rlambert@student.42.fr"

" multicursors
let g:multi_cursor_exit_from_insert_mode = 0

" HBS MatchTag
autocmd FileType handlebars runtime! ftplugin/html.vim
