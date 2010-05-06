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
    autocmd FileType ruby,eruby,yaml set ai sw=2 st=2 ts=2 et
    let g:rubycomplete_buffer_loading = 1
    let g:rubycomplete_rails = 1
    let g:rubycomplete_classes_in_global = 1
    set tags+=$HOME/.vim/tags/ruby.ctags
    set tags+=$HOME/.vim/tags/rails.ctags
   
    """"""""""""""""""""""""""""
    " Python  
    """"""""""""""""""""""""""""
    autocmd FileType python set omnifunc=pythoncomplete#Complete
    autocmd FileType python set ai sw=4 st=4 ts=4 et
    set tags+=$HOME/.vim/tags/python.ctags

    """"""""""""""""""""""""""""
    " Erlang  
    """"""""""""""""""""""""""""
    autocmd FileType erlang set omnifunc=erlangcomplete#Complete
    autocmd FileType erlang set ai sw=2 st=2 ts=2 et
    let g:erlangCompiler="erlc"
   
    """"""""""""""""""""""""""""
    " PHP  
    """"""""""""""""""""""""""""
    autocmd FileType php set omnifunc=phpcomplete#CompletePHP
    autocmd FileType php set ai sw=4 st=4 ts=4 ts=4 et
    set tags+=$HOME/.vim/tags/php.ctags
   
    """"""""""""""""""""""""""""
    " HTML  
    """"""""""""""""""""""""""""
    autocmd FileType html,xhtml set ai sw=4 st=4 ts=4 et
