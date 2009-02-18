map <C-a> :source ~/.vimrc<CR>

""" Mapeamento """
map <C-q> :mksession! ~/.vim/.session <cr>
map <C-//> map ,# :s/^/#/<CR>
map <S-//> :s/^\/\/\\|^--\\|^> \\|^[#"%!;]//<CR><Esc>:nohlsearch<CR>
map <M-Right> :tabnext<CR>
map <M-Left> :tabprevious<CR>
map <C-s> :w<CR>
map <F8> :NERDTreeToggle<CR>

""" Configurações Gerais """
set nocompatible
set nobackup
set nowritebackup
set sessionoptions=blank,buffers,curdir,folds,help,resize,tabpages,winsize
set statusline=%<%f\ %h%m%r\ [%Y]\ [GIT:%{GitBranchInfoTokens()[0]}]%=%-10([line/total\ %l/%L,\ col\ %c%V]%)%=%-30(%)\ %P
set laststatus=2
syntax on
