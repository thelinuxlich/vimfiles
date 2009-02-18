""" Configurações Gerais """
set nocompatible
set nobackup
set nowritebackup
set sessionoptions=blank,buffers,curdir,folds,help,resize,tabpages,winsize
set statusline=%<%f\ %h%m%r\ [%Y]\ [GIT:%{GitBranchInfoTokens()[0]}]%=%-10([line/total\ %l/%L,\ col\ %c%V]%)%=%-10(%)\ %P
set laststatus=2
syntax on
set nu
filetype plugin indent on
set ruler
set nowrap

""" Completação de Codigo """
inoremap <Nul> <C-x><C-o>

""" Configurações do Color Schema """
colorscheme desert

""" Mapeamento """
noremap <C-v><C-r> <esc>:source ~/.vimrc<CR>
noremap <C-v><C-s> <esc>:mksession! ~/.vim/.session<CR>
map <M-Right> <esc>:tabnext<CR>
map <M-Left> <esc>:tabprevious<CR>
noremap <C-s> <Esc>:w<CR>
noremap <F8> :NERDTreeToggle<CR>

""" Configurações do Ruby """
augroup ruby
  autocmd!
  autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
  autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
  autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
  autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
  autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
  set tags+=$HOME/.vim/tags/python.ctags
augroup END

""" Configurações do Python """
augroup python
  autocmd!
  autocmd FileType python set omnifunc=pythoncomplete#Complete
  autocmd FileType python set ai sw=2 sts=2 et
  set tags+=$HOME/.vim/tags/python.ctags
augroup END
""" Configurações para Gvim """
if has("gui_running")
  set guifont="Bitstream Vera Sans Mono":h11
  set guitablabel=%M%t
  set guioptions-=m
  set guioptions-=T
  set lines=40
  set columns=115
  set mousehide  " Hide mouse after chars typed
endif