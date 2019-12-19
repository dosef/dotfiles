" Plugins (Vundle)
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'w0rp/ale'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'nvie/vim-flake8'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/nerdtree'
call vundle#end()
filetype plugin indent on

" Airline
let g:airline#extensions#tabline#enabled = 1

" Gitgutter
set updatetime=100

" Colors
colorscheme ron
let g:airline_theme='night_owl'
highlight GitGutterAdd ctermfg=green
highlight GitGutterChange ctermfg=blue
highlight GitGutterChangeDelete ctermfg=blue
highlight GitGutterDelete ctermfg=red

" Line numbers
set number
set relativenumber
highlight lineNr ctermfg=grey

" Various configurations
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set smartindent
set autoindent
set wildmenu
set splitright
set splitbelow
set incsearch
set hlsearch
set ignorecase
set smartcase
let mapleader = ","

" Higlight trailing whitespace
highlight ExtraWhitespace ctermbg=grey
match ExtraWhitespace /\s\+$/

" Highlight too long lines
2mat ErrorMsg '\%81v.'
"set colorcolumn=81
"highlight colorcolumn ctermbg=white

" Mappings
map <C-l> :bnext<CR>
map <C-h> :bprev<CR>
map <C-q> :bd<CR>
nmap <silent> <C-N> :NERDTreeToggle<CR>

set nocursorline

" LUA
autocmd FileType lua setlocal shiftwidth=2 softtabstop=2
