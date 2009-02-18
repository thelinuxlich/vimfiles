""" Configurações Gerais """
set nocompatible
set nobackup
set nowritebackup
set sessionoptions=blank,buffers,curdir,folds,help,resize,tabpages,winsize
set statusline=%<%f\ %h%m%r\ [%Y]\ [GIT:%{GitBranchInfoTokens()[0]}]%=%-10([line/total\ %l/%L,\ col\ %c%V]%)%=%-30(%)\ %P
set laststatus=2

map <C-a> :source ~/.vimrc<CR>