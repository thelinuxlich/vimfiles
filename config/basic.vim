" General configuration

set nocompatible                                                    " We're running Vim, not Vi!
set nobackup
set nowritebackup
set noswapfile
set nowrap
set nojoinspaces
set novisualbell
set noerrorbells
set nocp incsearch

set ai                                                              " AutoIndent
set autowrite                                                       " auto write each change
set autoread
set bs=2                                                            " Backspace over everything in insert mode
set cf                                                              " Enable error files & error jumping.
set clipboard+=unnamed                                              " Yanks go on clipboard instead.
set cindent                                                         " Using cindent
set cinoptions=:0,p0,t0                                             " Some parameters to use in cintdent
set cinwords=if,else,while,do,for,switch,case                       " Words to cindent
set cursorline

if g:use_expandtab
  set et                                                            " ExpandTab: troca TABs por espacos
  retab                                                             " Convert all existent tabs to spaces
endif

set foldmethod=indent                                               " fold based on indent
set foldnestmax=3                                                   " Deepest fold is 3 levels
set nofoldenable                                                    " Don't fold by default

set encoding=utf8                                                   " Default encoding is utf8

set gdefault                                                        " Using g as default for :substitute

if g:use_ack
  set grepprg=ack-grep                                              " Using ack-grep
  set grepformat=%f:%l:%m                                           " Formating output
endif

set is                                                              " Incremented Search
set hls                                                             " HighLighted Search
set ic                                                                          " Ignore Case
set scs                                                             " SmartCaSe
set magic                                                           " To use different patterns

set history=256                                                     " Number of things to remember in history.
set list
set lcs=tab:\ \ ,extends:>,precedes:<

set mat=5                                                           " Bracket blinking.

set nu                                                              " Line numbers on
set hid                                                             " Change buffer without save

set path=$PWD/public/**,$PWD/**
set report=0                                                        " Actions Reported on footer
set ruler                                                           " Show line number on the footer
set shm=filmnrwxt                                                   " SHortMessages: short messages on footer
set showmatch                                                       " Show matching brackets.
set sw=2                                                            " ShiftWidth: Used on autoindent
set smarttab
set showcmd                                                         " Show ( parcially ) the commands on footer

set mouse=a
set mousemodel=popup

" vertical/horizontal scroll off settings
set scrolloff=3
set sidescrolloff=7
set sidescroll=1
set smartindent

set title                                                           " set window name as titlestring

set wildmenu                                                        " Enable ctrl-n and ctrl-p to scroll thru matches
set wildmode=full                                                   " Make cmdline tab completion similar to bash
set wildignore+=*.o,*~,*.swp,*.pyc,*.pyo,*.gif                      " Stuff to ignore when tab completing
set wildignore+=*.dll,*.obj,*.bak,*.jpg,*.png                       " Stuff to ignore when tab completing

set sessionoptions=blank,buffers,curdir,folds,help,resize,tabpages,winsize

set guioptions-=T
set guioptions-=m
set guioptions-=l
set guioptions-=r
set guioptions-=b
set guioptions
set background=dark

set laststatus=2                                                  " Always show status line.
set statusline=%<%f\ %h%m%r\ [%Y]\ [GIT:%{fugitive#statusline()}]%=%-10([line/total\ %l/%L,\ col\ %c%V]%)%=%-10(%)\ %P

set so=7
set cmdheight=2
set lz
set whichwrap+=<,>,h,l
set hlsearch
set lbr
set tw=500

let mapleader=leader_key
let g:mapleader=leader_key

syntax enable
filetype plugin on
filetype indent on

