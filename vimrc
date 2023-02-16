" Colors
syntax on " enable syntax processing
colorscheme codedark

" Spaces and Tabs
set tabstop=4 " number of visual spaces per TAB
set softtabstop=4 " number of spaces in tab when editing
set shiftwidth=4 " when indenting with '>', use 4 spaces width
set expandtab " tabs are spaces
set smarttab "insert tabs on the start of a line according to shiftwidth
set smartindent " auto insert one extra level of indentation in some cases
set scrolloff=8 " add some space between cursor and end of screen

" UI Config
set encoding=utf-8
set number " line numbers
set showcmd " command on bottom bar
set cursorline " highlight current line
set wildmenu " visual autocomplete for command menu
set lazyredraw " redraw only when we need to.
set showmatch " highlight matching [{()}]
set colorcolumn=120 " alert line
set signcolumn=yes " linter column
set cmdheight=2 " number of lines to errors in the bottom
set laststatus=2 " show file path
set splitright " split to right
set splitbelow " split in the bottom
set autoread " update file if changed

filetype plugin indent on " load filetype-specific indent files

" Searching
set path+=** " path of search :find
set incsearch " search as characters are entered
set hlsearch " highlight matches
set ignorecase " for smartcase works
set smartcase " case insensitive when all lower case

" Golang
"let g:go_def_mode='gopls'
"let g:go_info_mode='gopls'
"let g:go_doc_popup_window = 1

" tree
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
" enable this to open when vim is opened
" augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
" augroup END

" REMAPS
" Resize screen
"nnoremap <M-j> :resize -2<CR>
"nnoremap <M-k> :resize +2<CR>
"nnoremap <M-h> :vertical resize -2<CR>
"nnoremap <M-l> :vertical resize +2<CR>

" turn off search highlight leader=\
nnoremap <leader><space> :nohlsearch<CR>

" highlight when left the cursor stopped in a word
function! HighlightWordUnderCursor()
    if getline(".")[col(".")-1] !~# '[[:punct:][:blank:]]'
        exec 'match' 'Search' '/\V\<'.expand('<cword>').'\>/'
    else
        match none
    endif
endfunction
autocmd! CursorHold,CursorHoldI * call HighlightWordUnderCursor()

" deoplete - ale requirements for completion
let g:deoplete#enable_at_startup = 1 
let g:ale_completion_enabled = 1
set omnifunc=ale#completion#OmniFunc

"https://github.com/dense-analysis/ale
let g:ale_linters = {
\}

let g:ale_fixers = {
\}

let g:ale_fix_on_save = 1

call deoplete#custom#option('sources', {
\ '_': ['ale', 'foobar'],
\})
