" my filetype plugin for Perl

" idempotent
if exists("b:loaded_ftplugin_rst_jotr")
   finish
endif
let b:loaded_ftplugin_rst_jotr = 1

setlocal autoindent
setlocal expandtab
setlocal foldmethod=syntax
setlocal tabstop=4
setlocal textwidth=78
setlocal list
setlocal listchars=trail:-,tab:\.\
