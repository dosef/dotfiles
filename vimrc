" Plugins (Vundle)
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'tpope/vim-fugitive'
Plugin 'w0rp/ale'
Plugin 'airblade/vim-gitgutter'
Plugin 'morhetz/gruvbox'
call vundle#end()
filetype plugin indent on

" Colors
syntax enable
set background=dark
colorscheme gruvbox
highlight GitGutterAdd    ctermfg=2
highlight GitGutterChange ctermfg=3
highlight GitGutterDelete ctermfg=1
highlight GitGutterChangeDelete ctermfg=4
highlight ALEErrorSign ctermfg=1
highlight ALEWarningSign ctermfg=3
highlight clear SignColumn

set updatetime=250

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
set number

" Highlight too long lines
2mat ErrorMsg '\%81v.'

set nocursorline

" LUA
autocmd FileType lua setlocal shiftwidth=2 softtabstop=2

" Copy to clipboard
set clipboard=unnamedplus
