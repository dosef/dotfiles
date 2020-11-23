call plug#begin('~/.vim/plugged')
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'w0rp/ale'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'wincent/terminus'
Plug 'chun-yang/auto-pairs'
Plug 'kien/ctrlp.vim'
call plug#end()

" Nerdtree
map <C-n> :NERDTreeToggle<CR>

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" Ale
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   'rust': ['rustfmt'],
\   'html': ['prettier'],
\}

" Colors
colorscheme gruvbox
syntax enable
highlight GitGutterAdd ctermfg=2
highlight GitGutterChange ctermfg=3
highlight GitGutterDelete ctermfg=1
highlight GitGutterChangeDelete ctermfg=4
highlight ALEErrorSign ctermfg=1
highlight ALEWarningSign ctermfg=3
highlight clear SignColumn

" Various configurations
set updatetime=250
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
set relativenumber
set mouse=a
set cursorline

nmap <C-l> :bnext<CR>
nmap <C-h> :bprevious<CR>
