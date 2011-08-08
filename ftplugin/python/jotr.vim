" settings I like for python

" Only do this when not done yet for this buffer
if exists("b:loaded_ftplugin_python_jotr")
   finish
endif
let b:loaded_ftplugin_python_jotr = 1

" http://www.reddit.com/r/vim/comments/euon6/why_does_vims_python_default_behavior_suck_so/
"filetype plugin indent on

setlocal autoindent
setlocal expandtab
setlocal smartindent        " do I really want this?
setlocal tabstop=4
setlocal textwidth=79
setlocal foldmethod=indent
"setlocal cursorline
"setlocal number

" set up mappings for python
let maplocalleader = ","

nmap <LocalLeader>p oimport pdb; pdb.set_trace()<ESC>
nmap <LocalLeader>v oimport vimpdb; vimpdb.set_trace()<ESC>
