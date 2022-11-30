" Colors
syntax on " enable syntax processing
colorscheme tender

" Spaces and Tabs
set tabstop=4 " number of visual spaces per TAB
set softtabstop=4 " number of spaces in tab when editing
set expandtab " tabs are spaces

" UI Config
set number " line numbers
set showcmd " command on bottom bar
set cursorline " highlight current line
filetype indent on " load filetype-specific indent files
set wildmenu " visual autocomplete for command menu
set lazyredraw " redraw only when we need to.
set showmatch " highlight matching [{()}]

" Searching
set path+=** " path of search :find
set incsearch " search as characters are entered
set hlsearch " highlight matches

    " turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
