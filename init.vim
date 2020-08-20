call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'morhetz/gruvbox'
Plug 'w0rp/ale'
Plug 'ryanoasis/vim-devicons'
Plug 'valloric/youcompleteme'
call plug#end()

let g:ycm_rust_src_path = '/usr/local/rust/rustc-1.8.0/src'

colorscheme gruvbox

set cursorline

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" Ale
let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1
let g:ale_fixers = {
\   'rust': ['rustfmt'],
\   'html': ['prettier'],
\}

" Nerdtree
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let g:NERDTreeGitStatusUseNerdFonts = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" Colors
syntax enable
highlight GitGutterAdd ctermfg=2
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
set relativenumber

" Copy to clipboard
set clipboard=unnamedplus
