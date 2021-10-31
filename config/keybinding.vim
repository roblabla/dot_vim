nnoremap <Leader>v :vsp<CR>
nnoremap <silent> <Leader>p :call <SID>ToggleCopyPasteMode()<CR>
" - todo: <Leader this shiz
nnoremap <silent> <tab> :call <SID>TabNextNormal()<CR>
nnoremap <silent> <S-tab> :call <SID>TabPrevNormal()<CR>
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
	if exists(":FZF")
		nnoremap <Leader>o :FZF<CR>
	endif
	if exists(":FZF")
		nnoremap <Leader>/ :call RipgrepFzf("", 0)<CR>
	endif
endfunction

function! s:TabPrevNormal()
	if exists("g:NERDTree") && g:NERDTree.ExistsForBuf()
		" Do nothing
	else
		bp
	endif
endfunction

function! s:TabNextNormal()
	if exists("g:NERDTree") && g:NERDTree.ExistsForBuf()
		" Do nothing
	else
		bn
	endif
endfunction

function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case -- %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

