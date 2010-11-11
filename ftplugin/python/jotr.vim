" settings I like for python

" Only do this when not done yet for this buffer
if exists("b:loaded_ftplugin_python_jotr")
   finish
endif
let b:loaded_ftplugin_python_jotr = 1

filetype plugin indent on

setlocal autoindent
setlocal expandtab
setlocal tabstop=4
setlocal textwidth=78
setlocal number

" set up mappings for python
:let maplocalleader = ","

nmap <LocalLeader>f oimport pdb; pdb.set_trace()<ESC>
nmap <LocalLeader>v oimport vimpdb; vimpdb.set_trace()<ESC>
