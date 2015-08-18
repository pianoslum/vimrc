
"NeoBundle Scripts-----------------------------
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=/home/paul/.vim/bundle/neobundle.vim/
endif

" Use , as leader
let mapleader = " "
let g:mapleader = " "
" Required:
call neobundle#begin(expand('/home/paul/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Track the engine.
NeoBundle 'SirVer/ultisnips'
"
" " Snippets are separated from the engine. Add this if you want them:
NeoBundle 'honza/vim-snippets'

" " solarized color
NeoBundle 'altercation/vim-colors-solarized'

" " silver searcher
NeoBundle 'rking/ag.vim'

" " silver searcher
NeoBundle 'bling/vim-airline'

" " Autoclose parenthesis
NeoBundle 'cohama/lexima.vim'

NeoBundle 'henrik/vim-indexed-search'

NeoBundle 'easymotion/vim-easymotion'

NeoBundle 'Shougo/vimproc.vim', {
            \ 'build' : {
            \     'windows' : 'tools\\update-dll-mingw',
            \     'cygwin' : 'make -f make_cygwin.mak',
            \     'mac' : 'make -f make_mac.mak',
            \     'linux' : 'make',
            \     'unix' : 'gmake',
            \    },
            \ }

" unite
NeoBundle 'Shougo/unite.vim'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

" Enable file type plugins
filetype plugin on

" Detect .tex as latex files
let g:tex_flavor='latex'

" Max number of tab pages
set tabpagemax=15

" Show line numbers
set number

" Use 16 colors in terminal
set t_Co=16

" Use dark background
set background=dark

" Use solarized colortheme
colorscheme solarized

" Auto indent
set autoindent
"
" Smart indent
set smartindent

" Enable mouse
set mouse=a

" Show extended menu
set wildmenu

" Show command when typing
set showcmd

" Highlight search
set hlsearch
set incsearch

" Ignore case when searching lower case
set ignorecase
set smartcase

set clipboard+=unnamed " Use system clipboard


" Use spaces instead of tabs
set expandtab

" " Be smart when using tabs ;)
set smarttab

" " 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

nmap <Leader>o o<ESC>
nmap <Leader>O O<ESC>

" Always show airline
set laststatus=2
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
  endif
  let g:airline_symbols.space = "\ua0"

set spelllang=de
