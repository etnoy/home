let $LANG = 'en_US'
set langmenu=en_US.UTF-8    " sets the language of the menu (gvim)

set conceallevel=0

au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
autocmd Filetype tex set linebreak
autocmd Filetype tex set textwidth=80
autocmd Filetype tex set colorcolumn=80
autocmd Filetype tex set wrap

autocmd Filetype text set linebreak
autocmd Filetype text set colorcolumn=80
autocmd Filetype text set wrap
autocmd Filetype text set textwidth=80

autocmd Filetype markdown set wrap
autocmd Filetype markdown set linebreak
autocmd Filetype markdown set textwidth=80
autocmd Filetype markdown set colorcolumn=80

set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
map <f1> :w
imap <f1> <Esc>:w

set conceallevel=0

if LINUX()
    set guifont=Source\ Code\ Pro\ for\ Powerline\ Medium\ 12
endif
if WINDOWS()
    lang mes en
    let g:vimtex_view_general_viewer = 'sumatrapdf'
endif
let g:vim_markdown_folding_disabled = 1

set timeout timeoutlen=300000 ttimeoutlen=100
set smartcase
set noerrorbells " don't whine
set visualbell t_vb= " and don't make faces
let g:Imap_UsePlaceHolders = 0
let g:AutoPairsShortcutFastWrap=''
"let g:neocomplete#enable_at_startup = 0
let g:syntastic_auto_jump = 0
let &runtimepath=($HOME."/.vim/snippets," . &runtimepath)
let &runtimepath=($HOME."/.vim/bundle/vundle," . &runtimepath)
let g:syntastic_tex_chktex_args = ("-l \"".$HOME."\\.chktexrc\"")

let g:vimtex_quickfix_latexlog = {
            \ 'overfull' : 0,
            \ 'underfull' : 0,
            \ 'font' : 0,
            \}
let g:vimtex_quickfix_open_on_warning = 0
let g:vimtex_view_automatic = 0

set wildmode=longest,list
let g:vimtex_compiler_latexmk = {
            \ 'backend' : 'jobs',
            \ 'background' : 1,
            \ 'build_dir' : '',
            \ 'callback' : 1,
            \ 'continuous' : 1,
            \ 'executable' : 'latexmk',
            \ 'options' : [
            \   '-pdf',
            \   '-verbose',
            \   '-file-line-error',
            \   '-synctex=1',
            \   '-interaction=nonstopmode',
            \ ],
            \}
let g:ycm_key_list_select_completion = ['<TAB>']
let g:ycm_key_list_previous_completion = ['<S-TAB>']
let g:ycm_key_list_stop_completion = ['<C-y>', '<UP>', '<DOWN>']

let g:evervim_bundle_groups=['general', 'appearance', 'writing', 'youcompleteme', 'programming', 'python', 'javascript', 'typescript', 'html', 'css', 'misc', 'go', 'rust', 'cpp', 'lua', 'youcompleteme']

let g:override_evervim_bundles = 1


let g:tex_flavor='latex'
let g:vimtex_view_general_viewer = 'SumatraPDF.exe'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
let g:vimtex_view_general_options_latexmk = '--unique'
let g:vimtex_compiler_progname = v:progname
let g:evervim_color_theme="molokai"
let g:evervim_airline_theme="molokai"
