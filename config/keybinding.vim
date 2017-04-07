nnoremap <Leader>v :vsp<CR>
nnoremap <silent> <Leader>p :call <SID>ToggleCopyPasteMode()<CR>
" - todo: <Leader this shiz
nnoremap <silent> <tab> :bn<CR>
nnoremap <silent> <S-tab> :bp<CR>
nnoremap <Leader>w :BD<CR>
nnoremap <Leader>s :w<CR>

function! s:ToggleCopyPasteMode()
	if &list
		set nolist
		set paste
		set nonumber
		set norelativenumber
		set foldcolumn=0
		GitGutterDisable
		if exists(":NumbersDisable")
			:NumbersDisable
		endif
		set mouse=
	else
		set list
		set nopaste
		set number
		set relativenumber
		set foldcolumn=1
		GitGutterEnable
		if exists(":NumbersEnable")
			:NumbersEnable
		endif
		set mouse=a
	endif
endfunction


autocmd VimEnter * call <SID>CreateKeybindings()

function! s:CreateKeybindings()
	if exists(":CtrlP")
		nnoremap <Leader>o :CtrlP<CR>
	endif
endfunction
