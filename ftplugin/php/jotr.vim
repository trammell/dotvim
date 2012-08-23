" my filetype plugin for PHP

" idempotent
if exists("b:loaded_ftplugin_php_jotr")
    finish
endif
let b:loaded_ftplugin_php_jotr = 1

setlocal autoindent
setlocal foldmethod=syntax
setlocal tabstop=4
setlocal textwidth=78
setlocal list
setlocal listchars=trail:-,tab:\ \ 
"setlocal listchars=trail:-,tab:  
"setlocal listchars=trail:-
setlocal noet

let maplocalleader = ","

"highlight ExtraWhiteSpace ctermbg=red guibg=red
"match ExtraWhiteSpace /^\t*\zs \+/

