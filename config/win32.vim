" ConEmu
if !empty($CONEMUBUILD)
	set termencoding=utf8
	set term=xterm
	set t_Co=256
	let &t_AB="\e[48;5;%dm"
	let &t_AF="\e[38;5;%dm"
else
	
endif
