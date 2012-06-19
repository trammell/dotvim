" my filetype plugin for C

" idempotent
if exists("b:loaded_ftplugin_c_jotr")
   finish
endif
let b:loaded_ftplugin_c_jotr = 1

setlocal autoindent
setlocal expandtab
setlocal foldmethod=syntax
setlocal tabstop=4
setlocal textwidth=78
setlocal list
setlocal listchars=trail:-,tab:\.\

let maplocalleader = ","

" mappings
nmap <LocalLeader>e :call PerlMathEval()<CR>
