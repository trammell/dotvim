" my filetype plugin for Perl

" idempotent
if exists("b:loaded_ftplugin_perl_jotr")
   finish
endif
let b:loaded_ftplugin_perl_jotr = 1

setlocal autoindent
setlocal expandtab
setlocal foldmethod=syntax
setlocal tabstop=4
setlocal textwidth=78
setlocal list
setlocal listchars=trail:-,tab:\.\

let maplocalleader = ","
let perl_fold=1

function! StandardPODHeader()
    exe  "normal o=pod\r\e"
    exe  "normal o=head1 NAME\r\e"
    exe  "normal o=head1 SYNOPSIS\r\e"
    exe  "normal o=head1 DESCRIPTION\r\e"
    exe  "normal o=cut\r\e"
endfunction

" mappings
nmap <LocalLeader>p :call StandardPODHeader()<CR>
nmap <LocalLeader>s iuse strict;<CR>use warnings FATAL => 'all';<CR><ESC>
