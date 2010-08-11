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

" Extended substitution on the project(ignores a lot of files)
function! FXs(pattern)
  execute "Rcd"
  execute "args `find . -name '*.sql' -prune -o -name '*.sqlite3' -prune -o -name '*.csv' -prune -o -name '*.jpg' -prune -o -name '*.png' -prune -o -name '*.gif' -prune -o -name '*.jpeg' -prune -o -path './log' -prune -o -path '*/.git' -prune -o -path './vendor' -prune -o -path './tmp' -prune -o -path '*/.svn' -prune -o -type f -print`"
  execute "argdo %s" . a:pattern . "gec | update"
endfunction

command! -nargs=1 Xs call FXs(<f-args>)

" Open the Ruby ApiDock page for the word under cursor, in a new Firefox tab
function! OpenRubyDoc(keyword)
  let url = 'http://apidock.com/ruby/search/quick?query='.a:keyword
  exec '!'.g:browser.' '.url.' &'
endfunction

" Open the Rails ApiDock page for the word under cursor, in a new Firefox tab
function! OpenRailsDoc(keyword)
  let url = 'http://apidock.com/rails/search/quick?query='.a:keyword
  exec '!'.g:browser.' '.url.' &'
endfunction

" Open the Rspec ApiDock page for the word under cursor, in a new Firefox tab
function! OpenRspecDoc(keyword)
  let url = 'http://apidock.com/rspec/search/quick?query='.a:keyword
  exec '!'.g:browser.' '.url.' &'
endfunction

" Open the jQuery API page for the word under cursor, in a new Firefox tab
function! OpenJqueryDoc(keyword)
  if a:keyword == 'ajax' || a:keyword == 'ajaxSetup' ||
        \ a:keyword == 'boxModel' || a:keyword == 'browser' ||
        \    a:keyword == 'contains' || a:keyword == 'data' ||
        \    a:keyword == 'extend' || a:keyword == 'getJSON' ||
        \    a:keyword == 'getScript' || a:keyword == 'globalEval' ||
        \a:keyword == 'grep' || a:keyword == 'inArray' ||
        \a:keyword == 'isArray' || a:keyword == 'isEmptyObject' ||
        \a:keyword == 'isFunction' || a:keyword == 'isPlainObject' ||
        \a:keyword == 'isXMLDoc' || a:keyword == 'makeArray' ||
        \a:keyword == 'merge' || a:keyword == 'noConflict' ||
        \a:keyword == 'noop' || a:keyword == 'param' ||
        \a:keyword == 'parseJSON' || a:keyword == 'post' ||
        \a:keyword == 'proxy' || a:keyword == 'pushStack' ||
        \a:keyword == 'support' || a:keyword == 'trim' ||
        \a:keyword == 'unique'
    let api_keyword = 'jQuery.' . a:keyword
  elseif a:keyword == 'currentTarget' || a:keyword == 'isDefaultPrevented' ||
        \a:keyword == 'isImmediatePropagationStopped' || a:keyword == 'isPropagationStopped' ||
        \a:keyword == 'pageX' || a:keyword == 'pageY' || a:keyword == 'preventDefault' ||
        \a:keyword == 'relatedTarget' || a:keyword == 'result' ||
        \a:keyword == 'stopImmediatePropagation' || a:keyword == 'stopPropagation' ||
        \a:keyword == 'target' || a:keyword == 'timestamp' ||
        \a:keyword == 'type' || a:keyword == 'which'
    let api_keyword = 'event.' . a:keyword
  else  
    let api_keyword = a:keyword
  endif  
  let url = 'http://api.jquery.com/'. api_keyword
  exec '!'.g:browser.' '.url . '&'
endfunction
