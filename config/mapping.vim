nmap <leader>w :w!<cr>                          " Save
nmap <leader>x :x<cr>                           " Save end quit
nmap <leader>r :e!<cr>                          " Reload file


map <leader>sv :source ~/.vimrc<cr>             " Reload vimrc
map <leader>ev :e! ~/.vimrc<cr>                 " Open vimrc
autocmd! bufwritepost .vimrc source ~/.vimrc    " Auto reload vimrc if changed


" Better way for moving between buffer/windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l

map <leader>tn :tabnew %<cr>                    " Open current buffer in new tab
map <leader>te :tabedit                         " Open new tab with informed file
map <leader>tc :tabclose<cr>                    " Close current tab
map <leader>tm :tabmove                         " Move current tab
map <tab> :tabnext<cr>                          " Change to next tab

map <leader>t2 :set shiftwidth=2<cr>            " Change tab width to 2
map <leader>t4 :set shiftwidth=4<cr>            " Change tab width to 4

imap <F12> <esc>:wqa!<cr>                       " Save all and quit 
 map <F12> :wqa!<cr>                            " Save all and quit

" Spell checking
nmap <F7> :setlocal spell spelllang=pt<CR>
nmap <F8> :setlocal spell spelllang=en<CR>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

map <F2> :NERDTreeToggle<cr>
map <F3> :BufExplorer<cr>
map <F5> :ToggleScratch<cr>

" Pesquisa de API
map RB :call OpenRubyDoc(expand('<cword>'))<CR>
map RR :call OpenRailsDoc(expand('<cword>'))<CR>
map RS :call OpenRspecDoc(expand('<cword>'))<CR>
map JJ :call OpenJqueryDoc(expand('<cword>'))<CR>
