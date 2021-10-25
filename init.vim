" **************************************************************************** "
"                                                                              "
"                                                         :::      ::::::::    "
"    .vimrc                                             :+:      :+:    :+:    "
"                                                     +:+ +:+         +:+      "
"    By: roblabla <robinlambertz.dev@gmail.com>     +#+  +:+       +#+         "
"                                                 +#+#+#+#+#+   +#+            "
"    Created: 2014/08/01 23:27:38 by roblabla          #+#    #+#              "
"    Updated: 2017/04/07 17:11:14 by roblabla         ###   ########.fr        "
"                                                                              "
" **************************************************************************** "

let $VIMPATH=fnamemodify(resolve(expand($MYVIMRC)), ":p:h")
source $VIMPATH/config/plugin_list.vim
source $VIMPATH/config/vim_config.vim
source $VIMPATH/config/keybinding.vim
if has("win32")
	source $VIMPATH/config/win32.vim
endif
if has("nvim")
	source $VIMPATH/config/autocomplete_config.lua
endif
source $VIMPATH/config/plugin_config.vim
