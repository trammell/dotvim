" my filetype plugin for PHP

" idempotent
if exists("b:loaded_ftplugin_php_jotr")
    finish
endif
let b:loaded_ftplugin_php_jotr = 1

setlocal autoindent
setlocal expandtab
setlocal foldmethod=syntax
setlocal tabstop=4
setlocal textwidth=78
setlocal list
setlocal listchars=trail:-,tab:\.\
"setlocal listchars=trail:-,tab:  
"setlocal listchars=trail:-
"setlocal noet

let maplocalleader = ","

setlocal formatoptions=coqr
setlocal comments=sr:/*,mb:*,ex:*/,b:#

"highlight ExtraWhiteSpace ctermbg=red guibg=red
"match ExtraWhiteSpace /^\t*\zs \+/

" simple syntax checker
nmap <LocalLeader>sy :!php -l %<CR>

