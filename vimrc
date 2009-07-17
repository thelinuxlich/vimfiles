""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configurações Gerais
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Modo de compatibilidade
set nocompatible

"Historico de comandos do vim
set history=400

"Ativar filetype plugin
filetype plugin on
filetype indent on

"Habilita auto leiturar para o arquivo for modificado fora do vim
set autoread

"O mouse deve ficar habilitado todo o tempo
set mouse=a

"Definição do mapleader
let mapleader = ","
let g:mapleader = ","

"Atalho para salvar rapido
nmap <leader>w :w!<cr>
nmap <leader>f :find<cr>

"Recarregar o .vimrc
map <leader>s :source ~/.vimrc<cr>
"Atalho para edição rápida do vimrc
map <leader>e :e! ~/.vimrc<cr>
"Se o vimrc for editado, recarregar ele
autocmd! bufwritepost .vimrc source ~/.vimrc

" Session Options
set sessionoptions=blank,buffers,curdir,folds,help,resize,tabpages,winsize

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Cores e Fontes
""""""""""""""""""""""""""""""""""""""""""""""""""""
"Habilita a syntax highlight
syntax enable

"Configura a font
set gfn=Monospace\11

if has("gui_running")
  set guioptions-=T
  set guioptions-=m
  colorscheme jellybeans
  set gfn="Bitstream Vera Sans Mono":h11
else
  set background=dark
  colorscheme jellybeans
endif

"Highlight current
if has("gui_running")
  set cursorline
  hi cursorline guibg=#333333
  hi CursorColumn guibg=#333333
endif

"Cores do omni menu
hi Pmenu guibg=#333333
hi PmenuSel guibg=#555555 guifg=#ffffff



""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Formato de arquivos
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Tipos de arquivos favoridos
set ffs=unix,mac
nmap <leader>fm :se ff=mac
nmap <leader>fu :se ff=unix


""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM userinterface
""""""""""""""""""""""""""""""""""""""""""""""""""""""
set so=7

"Ativa Wild menu
set wildmenu

"Sempre mostrar a posição atual
set ruler

"Commandbar com 2 linhas
set cmdheight=2

"Mostrar numero da linha
set nu

"Não redesenhar quando usar macros.. lazyredraw
set lz

"Mudar de buffer - sem salvar
set hid

"Definir backspace
set backspace=eol,start,indent

"Backspace and cursor keys wrap to
set whichwrap+=<,>,h,l

"Ignorar caixa quando estiver buscando
set ignorecase
set incsearch

"Set magic on
set magic

"Mostrar bracets correspondentes
set showmatch

"How many tenths of a second to blink
set mat=2

"Highlight search things
set hlsearch


""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Statusline
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Sempre esconder o statusline
set laststatus=2

" Formatação do statusline
set statusline=%<%f\ %h%m%r\ [%Y]\ [GIT:%{GitBranchInfoTokens()[0]}]%=%-10([line/total\ %l/%L,\ col\ %c%V]%)%=%-10(%)\ %P


""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" From an idea by Michael Naumann
function! VisualSearch(direction) range
  let l:saved_reg = @"
  execute "normal! vgvy"
  let l:pattern = escape(@", '\\/.*$^~[]')
  let l:pattern = substitute(l:pattern, "\n$", "", "")
  if a:direction == 'b'
    execute "normal ?" . l:pattern . "^M"
  else
    execute "normal /" . l:pattern . "^M"
  endif
  let @/ = l:pattern
  let @" = l:saved_reg
endfunction

"Basically you press * or # to search for the current selection !! Really useful
vnoremap <silent> * :call VisualSearch('f')<CR>
vnoremap <silent> # :call VisualSearch('b')<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Movendo-se e tabs
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Uma maneira melhor se se mover entre buffer/windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l

"Tab configuration
map <leader>tn :tabnew %<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <tab> :tabnext<cr>
map <d-tab> :tabprevious<cr>
try
  set switchbuf=usetab
  set stal=1
catch
endtry

"Moving fast to front, back and 2 sides ;)
imap <m-$> <esc>$a
imap <m-0> <esc>0i


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files and backups
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Turn backup off
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Folding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Enable folding, I find it very useful
set nofen
set fdl=0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab
set shiftwidth=2

map <leader>t2 :set shiftwidth=2<cr>
map <leader>t4 :set shiftwidth=4<cr>

set smarttab
set lbr
set tw=500

   """"""""""""""""""""""""""""""
   " Indent
   """"""""""""""""""""""""""""""
   "Auto indent
   set ai
   
   "Smart indet
   set si
   
   "C-style indeting
   set cindent
   
   "Wrap lines
   set wrap
   
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    """"""""""""""""""""""""""""
    " rails.vim
    """"""""""""""""""""""""""""
    let g:rails_default_file='config/database.yml'

    """"""""""""""""""""""""""""
    " NERDTree
    """"""""""""""""""""""""""""
    map <F2> :NERDTreeToggle<cr>

    """"""""""""""""""""""""""""
    " FuzzyFinder
    """"""""""""""""""""""""""""
    let g:proj_flags="imstg"
    let g:fuzzy_ceiling=20000
    let g:fuzzy_matching_limit=25
    let g:fuzzy_ignore = "gems/*, log/* tmp/*"
   
    map <F3> :FuzzyFinderTextMate<cr>
    map <leader>ffb :FuzzyFinderBuffer<cr>
    map <leader>ff] :FuzzyFinderMruFile<cr>
    map <leader>ffr :ruby finder.rescan!<cr> 

    """"""""""""""""""""""""""""
    " Scratch 
    """"""""""""""""""""""""""""
    let g:scratch_file="~/.vim/scratch"
    map <F6> :ToggleScratch<cr>

    """"""""""""""""""""""""""""
    " TagList 
    """"""""""""""""""""""""""""
    let Tlist_Ctags_Cmd='/usr/bin/ctags' " point taglist to ctags
    let Tlist_GainFocus_On_ToggleOpen = 1 " Focus on the taglist when its toggled
    let Tlist_Close_On_Select = 1 " Close when something's selected
    let Tlist_Use_Right_Window = 1 " Project uses the left window
    let Tlist_File_Fold_Auto_Close = 1 " Close folds for inactive files
    let Tlist_Sort_Type = "name"
    let Tlist_Show_Menu = 1
    map <F5> :TlistToggle<cr>

    """"""""""""""""""""""""""""
    " BufExplorer 
    """"""""""""""""""""""""""""
    map <F4> :BufExplorer<cr>  
  

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Filetype generic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    """"""""""""""""""""""""""""
    " VIM  
    """"""""""""""""""""""""""""
    autocmd FileType vim set ai sw=2 st=2 ts=2 et
    autocmd FileType vim map <buffer> <leader><space> :w!<cr>:source %<cr>

    """"""""""""""""""""""""""""
    " Ruby  
    """"""""""""""""""""""""""""
    autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
    autocmd FileType ruby,eruby,yaml set ai sw=2 st=2 et
    let g:rubycomplete_buffer_loading = 1
    let g:rubycomplete_rails = 1
    let g:rubycomplete_classes_in_global = 1
    set tags+=$HOME/.vim/tags/ruby.ctags
   
    """"""""""""""""""""""""""""
    " Python  
    """"""""""""""""""""""""""""
    autocmd FileType python set omnifunc=pythoncomplete#Complete
    autocmd FileType python set ai sw=4 st=4 et
    set tags+=$HOME/.vim/tags/python.ctags

    """"""""""""""""""""""""""""
    " Erlang  
    """"""""""""""""""""""""""""
    autocmd FileType erlang set omnifunc=erlangcomplete#Complete
    autocmd FileType erlang set ai sw=2 st=2 et
    let g:erlangCompiler="erlc"
   
    """"""""""""""""""""""""""""
    " PHP  
    """"""""""""""""""""""""""""
    autocmd FileType php set omnifunc=phpcomplete#CompletePHP
    autocmd FileType php set ai sw=4 st=4 ts=4 et
    set tags+=$HOME/.vim/tags/php.ctags
   
    """"""""""""""""""""""""""""
    " HTML  
    """"""""""""""""""""""""""""
    autocmd FileType html,xhtml set ai sw=4 st=4 ts=4et
    


"" Completação de Codigo
map <Nul> <C-x><C-o>
map <C-Space> <C-p>
map <C-\> <C-x><C-o>



