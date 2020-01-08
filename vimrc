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
Plugin 'altercation/vim-colors-solarized'
call vundle#end()
filetype plugin indent on

" Airline
let g:airline#extensions#tabline#enabled = 1

" Gitgutter
set updatetime=100

" Colors
syntax enable
set background=dark
colorscheme solarized

" Line numbers
set number
set relativenumber

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

" Higlight trailing whitespace
highlight ExtraWhitespace ctermbg=grey
match ExtraWhitespace /\s\+$/

" Highlight too long lines
2mat ErrorMsg '\%81v.'

" Mappings
map <C-l> :bnext<CR>
map <C-h> :bprev<CR>
map <C-q> :bd<CR>

set nocursorline

" Netrw settings
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
map <C-n> :Lexplore<CR>

" LUA
autocmd FileType lua setlocal shiftwidth=2 softtabstop=2

" Copy to clipboard
set clipboard=unnamedplus
