nnoremap <Leader>v :vsp<CR>
nnoremap <silent> <Leader>p :call <SID>ToggleCopyPasteMode()<CR>

function! s:ToggleCopyPasteMode()
	if &list
		set nolist
		set paste
		set nonumber
		set norelativenumber
		set foldcolumn=0
		if exists(":NumbersDisable")
			:NumbersDisable
		endif
	else
		set list
		set nopaste
		set number
		set relativenumber
		set foldcolumn=1
		if exists(":NumbersEnable")
			:NumbersEnable
		endif
	endif
endfunction


autocmd VimEnter * call <SID>CreateKeybindings()

function! s:CreateKeybindings()
	if exists(":CtrlP")
		nnoremap <Leader>o :CtrlP<CR>
	endif
endfunction
