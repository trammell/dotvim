" idempotent
if exists("b:loaded_ftplugin_vimwiki_jotr")
   finish
endif

let b:loaded_ftplugin_vimwiki_jotr = 1

setlocal expandtab
setlocal tabstop=2
setlocal foldmethod=marker
setlocal textwidth=75
setlocal list
setlocal listchars=trail:-,tab:\.\

let maplocalleader = ","
