:filetype plugin on
let g:tex_flavor='latex'
set tabpagemax=15
set number
set t_Co=16
set background=dark
colorscheme solarized
set autoindent
set mouse=a
set wildmenu
set showcmd
set hlsearch
set incsearch
set ignorecase
set smartcase

set laststatus=2
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
  endif
  let g:airline_symbols.space = "\ua0"
set timeoutlen=50

set spelllang=de

map <F10> :wall<CR> :!clear; make<CR>
