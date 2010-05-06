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
