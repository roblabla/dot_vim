" Airline, the status line of awesome
set guifont=Powerline_Consolas:h14:cANSI
let g:airline_theme='zenburn'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Colorscheme
set background=dark
colorscheme solarized

" NERDTree, my favorite file manager
autocmd VimEnter * call s:actionForOpen()
function! s:actionForOpen()
	NERDTree
	wincmd l
endfunction

autocmd BufCreate * call s:addingNewTab()
function! s:addingNewTab()
	if winnr('$') < 2 && exists('t:NERDTreeBufName') == 0
		NERDTree
		wincmd l
	endif
endfunction

" Close vim if only minibufexpl and nerdtree are open
autocmd WinEnter * call s:closeIfOnlyNerdTreeLeft()
function! s:closeIfOnlyNerdTreeLeft()
	if (winnr("$") == 1)
		if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
			q
		endif
	end
endfunction

" UndoTree
" Open to the right
let g:undotree_WindowLayout = 3

" Syntastic
let g:syntastic_coffee_checkers = ['coffee', 'coffeelint']

" JavaScript-syntax
autocmd FileType javascript call JavaScriptFold()
