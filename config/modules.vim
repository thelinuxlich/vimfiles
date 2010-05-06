" rails.vim
let g:rails_default_file='config/database.yml'

" gist.vim
let g:gist_clip_command = 'xclip -selection clipboard'
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1
let g:gist_browser_command = 'firefox %URL%'

" Scratch 
let g:scratch_file="~/.vim/scratch"

" TagList 
let Tlist_Ctags_Cmd='/usr/bin/ctags' " point taglist to ctags
let Tlist_GainFocus_On_ToggleOpen = 1 " Focus on the taglist when its toggled
let Tlist_Close_On_Select = 1 " Close when something's selected
let Tlist_Use_Right_Window = 1 " Project uses the left window
let Tlist_File_Fold_Auto_Close = 1 " Close folds for inactive files
let Tlist_Sort_Type = "name"
let Tlist_Show_Menu = 1
map <F4> :TlistToggle<cr>
set tags+="tags"
set tags+="tmp/tags"

" Sparkup
let g:sparkup = "~/.vim/bin/sparkup"
"let g:sparkupExecuteMapping = '<m-e>'
"let g:sparkupNextMapping = '<m-n>'

" snipMate
source ~/.vim/snippets/support_functions.vim

