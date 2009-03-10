""" Configurações Gerais
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

""" Completação de Codigo
inoremap <Nul> <C-x><C-o>

""" Configurações do Color Schema
colorscheme vividchalk

""" Mapeamento
noremap <C-v><C-r> <esc>:source ~/.vimrc<CR>
noremap <C-v><C-s> <esc>:mksession! ~/.vim/.session<CR>
map <M-Right> <esc>:tabnext<CR>
map <M-Left> <esc>:tabprevious<CR>
noremap <C-s> <esc>:w<CR>
noremap <F8> :NERDTreeToggle<CR>

""" Configurações para o FuzzyFinder
nnoremap <C-f> :FuzzyFinderTextMate<CR>
map <leader>b :FuzzyFinderBuffer<CR>
map <leader>] :FuzzyFinderMruFile<CR>
map <leader>r :ruby finder.rescan!<CR>
let g:proj_flags="imstg"
let g:fuzzy_ceiling=20000
let g:fuzzy_matching_limit=25
let g:fuzzy_ignore = "gems/*, log/*"

""" Configurações do Ruby 
augroup rubyfiletype
  autocmd!
  autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
  autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
  autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
  autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
  autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
  set tags+=$HOME/.vim/tags/ruby.ctags
augroup END

""" Configurações do Rails.vim
augroup rails
  let g:rails_default_file='config/database.yml'
augroup END

""" Configurações do Python 
augroup pythonfiletype
  autocmd!
  autocmd FileType python set omnifunc=pythoncomplete#Complete
  autocmd FileType python set ai sw=2 sts=2 et
  set tags+=$HOME/.vim/tags/python.ctags
augroup END

""" Configurações do Erlang
augroup erlangfiletype
  autocmd!
  autocmd FileType erlang set omnifunc=erlangcomplete#Complete
  autocmd FileType erlang set ai sw=2 sts=2 et
  let g:erlangCompiler="erlc"
augroup END

""" Configurações para PHP
augroup phpfiletype
  autocmd!
  autocmd FileType php set omnifunc=phpcomplete#Complete
  autocmd FileType php set ai sw=2 sts=2 et
  set tags+=$HOME/.vim/tags/php.ctags
augroup END

""" Configurações para Gvim """
if has("gui_running")
  set t_Co=256
  set guifont="Bitstream Vera Sans Mono":h11
  set guitablabel=%M%t
  set guioptions-=m
  set guioptions-=T
  set lines=40
  set columns=115
  set mousehide  " Hide mouse after chars typed
endif
