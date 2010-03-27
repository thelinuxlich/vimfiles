let g:browser = 'firefox -new-tab '
" On OSX - let g:browser = 'open -a /Applications/Firefox.app'

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

noremap JJ :call OpenJqueryDoc(expand('<cword>'))<CR>
