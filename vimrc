" Plugins (Vundle)
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'vitalk/vim-simple-todo'
call vundle#end()
filetype plugin indent on

" Gitgutter
set updatetime=100

" Gruvbox
colorscheme ron
set background=dark
highlight GitGutterAdd ctermfg=green
highlight GitGutterChange ctermfg=blue
highlight GitGutterChangeDelete ctermfg=blue
highlight GitGutterDelete ctermfg=red

" Line numbers
set number
set relativenumber
highlight linenr ctermfg=darkgrey

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

" Configure statusline
set laststatus=2
set statusline=%f
highlight statusline ctermfg=black ctermbg=white

" Mappings
map <C-n> :NERDTreeToggle<CR>
map <C-l> :bnext<CR>
map <C-h> :bprev<CR>
map <C-q> :bd<CR>
tnoremap <Esc> <C-\><C-n>

" LUA
autocmd FileType lua setlocal shiftwidth=2 softtabstop=2
