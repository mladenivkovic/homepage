"=================
" GUI
"=================

"Line Numbers
set number

" line wrap and other stuff
set linebreak
set wrap
set nolist

" line wrap with indent kept
set breakindent

" moving along visual lines, not physical lines
noremap  <buffer> <silent> k gk
noremap  <buffer> <silent> j gj
noremap  <buffer> <silent> 0 g0
noremap  <buffer> <silent> $ g$


" STATUS LINE

" First define new highlight groups
hi User1 ctermbg=black ctermfg=none
" it uses the solarised colors if =none 
"guibg=green guifg=white for GUI, which I don't use...

" Now add what you want

set laststatus=2                "status line permanently on

set statusline=%1*              "add personal highlighting
                                "specified in hi User1 ctermbg...
"set statusline+=%<\            " cut at start
"set statusline+=%t              "tail of the filename
"set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
"set statusline+=%{&ff}]        "file format
"set statusline+=%h             "help file flag
set statusline+=%m              "modified flag
set statusline+=%r              "read only flag
set statusline+=%-40f\                    " path
"set statusline+=%y             "filetype
set statusline+=%=              "left/right separator
set statusline+=Col\ %c,\       "cursor column
set statusline+=Lin\ %l/%L  "cursor line/total lines
set statusline+=\ %P        "percent through file 





"=================
" COLORS
"=================

" Set solarised color scheme
syntax on
let g:solarized_termcolors=256
set t_Co=256 
" colorscheme solarized
" set background=dark


" Set highlight colors for brackets/braces/parenthesis matching
hi MatchParen cterm=bold ctermbg=none ctermfg=magenta



"=================
" SEARCHING
"=================


" Ignoring case
set ignorecase

" Incremental searching
set incsearch

" Highlight things that we find with the search
set hlsearch







"=================
" VIM GENERAL
"=================

" Enable mouse support in console
set mouse=a

" set backup
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

" Split screen navigation key mapping change
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" enable 'intelligent' pasting
set paste






"=================
" SYNTAX AND TABS
"=================

" Needed for Syntax Highlighting and stuff
filetype on
filetype plugin on
syntax enable
set grepprg=grep\ -nH\ $*

" Who doesn't like autoindent?
set autoindent

" tab configs
set tabstop=4
set expandtab
set shiftwidth=4

" tab and backspace are smart
set smarttab                  

" Fortran highlighting
let fortran_free_source=1
let fortran_have_tabs=1
let fortran_more_precise=1
let fortran_do_enddo=1
"=================
"=================



"=================
"=================








