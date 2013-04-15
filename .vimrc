if has('win32') || has('win64')
    " Make windows use ~/.vim too, I don't want to use _vimfiles
    set runtimepath^=~/.vim
endif

set nocompatible
" select case-insenitiv search (not default)
set ignorecase
set smartcase
" Incremental searching is sexy
set incsearch
"
" " Highlight things that we find with the search
set hlsearch

" show cursor line and column in the status line
set ruler
set laststatus=2
set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]

" show matching brackets
set showmatch

" display mode INSERT/REPLACE/...
set showmode

" changes special characters in search patterns (default)
" set magic

" Required to be able to use keypad keys and map missed escape sequences
set esckeys

" get easier to use and more user friendly vim defaults
" CAUTION: This option breaks some vi compatibility. 
"          Switch it off if you prefer real vi compatibility

" Complete longest common string, then each full match
" enable this for bash compatible behaviour
set wildmenu
set wildmode=list:longest,full
set backspace=2

" This escape sequence is the well known ANSI sequence for
" Remove Character Under The Cursor (RCUTC[tm])
map! <Esc>[3~ <Delete>
map  <ESC>[3~    x

set langmenu=en_US.UTF-8    " sets the language of the menu (gvim)

language en_US.UTF-8

" Only do this part when compiled with support for autocommands. 
if has("autocmd") 
  " When editing a file, always jump to the last known cursor position. 
  " Don't do it when the position is invalid or when inside an event handler 
  " (happens when dropping a file on gvim). 
  autocmd BufReadPost * 
    \ if line("'\"") > 0 && line("'\"") <= line("$") | 
    \   exe "normal g`\"" | 
    \ endif 
 
endif " has("autocmd")

" Changed default required by SuSE security team--be aware if enabling this
" that it potentially can open for malicious users to do harmful things.
set modelines=0
set showcmd
set mouse=a
set background=dark
set number

call pathogen#infect()
call pathogen#helptags()

" Needed for Syntax Highlighting and stuff
let g:Powerline_symbols = 'fancy'
filetype on
filetype plugin on
syntax enable
set grepprg=grep\ -nH\ $*

" Who doesn't like autoindent?
set autoindent

" Spaces are better than a tab character
set smarttab
set tabstop=4
set shiftwidth=4

set scrolloff=10               " keep at least 5 lines above/below
set sidescrolloff=5           " keep at least 5 lines left/right

set cmdheight=2               " command line two lines high
set undolevels=1000           " 1000 undos
set updatecount=100           " switch every 100 chars
set complete=.,w,b,u,U,t,i,d  " do lots of scanning on tab completion
set showmatch                 " show matching bracket
set noerrorbells                " don't whine
set visualbell t_vb=            " and don't make faces
set numberwidth=5
set cul
hi CursorLine   cterm=NONE ctermbg=darkblue 
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
set nobackup
set background=dark
set encoding=utf-8
 
filetype indent on
set shellslash
set grepprg=grep\ -nH\ $*
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
let g:tex_flavor='latex'
"map <ScrollWheelUp> <C-U>
"map <MouseUp> <C-U>
"map <ScrollWheelDown> <C-D>
"map <S-ScrollWheelDown> <C-D>
let g:Tex_DefaultTargetFormat='pdf'
let g:tex_flavor='latex'
let g:Tex_CompileRule_dvi = 'latex -interaction=nonstopmode -file-line-error-style $*'
let g:Tex_CompileRule_pdf = 'pdflatex -interaction=nonstopmode -file-line-error-style $*'
autocmd Filetype tex set textwidth=80
autocmd Filetype tex set linebreak
set hidden

" Set the warning messages to ignore.
let g:Tex_IgnoredWarnings =
\"Underfull\n".
\"Overfull\n".
\"specifier changed to\n".
\"You have requested\n".
\"Missing number, treated as zero.\n".
\"There were undefined references\n".
\"Citation %.%# undefined\n".
\'LaTeX Font Warning:'"
" This number N says that latex-suite should ignore the first N of the above.
let g:Tex_IgnoreLevel = 8
let g:Tex_Env_theorem = "\\begin{theorem}\<CR><++>\<CR>\\end{theorem}"
let g:Tex_Env_align = "\\begin{align}\<CR><++>\<CR>\\end{align}"
autocmd Filetype tex setlocal nofoldenable
let g:Imap_UsePlaceHolders = 0

colors molokai
