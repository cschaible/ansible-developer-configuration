set nocompatible


filetype plugin indent on
syntax on
set ai
set bs=2
set cc=80,100
set fdm=syntax
set formatoptions+=j
set lcs=tab:⁞\ ,trail:X,nbsp:—,eol:·,precedes:<,extends:>
set ls=2
set list
set nu
set rnu
set ru
set si
set sta
set sw=2
set ts=2
set et
set ttyfast
set udf
set wmnu

" Write with sudo
com W w !sudo tee % > /dev/null

nmap <leader>L :diffget LOCAL<CR>
nmap <leader>R :diffget REMOTE<CR>
nmap <leader>B :diffget BASE<CR>
nmap <leader>U :diffupdate<CR>
nmap <leader>. :.diffget<CR>

nmap <leader>= yyp:s/./=/g<CR>
