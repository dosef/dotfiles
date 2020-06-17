call plug#begin('~/.config/nvim/plugins')
Plug 'morhetz/gruvbox'
Plug 'yggdroot/indentline'
"Plug 'w0rp/ale'
Plug 'ntpeters/vim-better-whitespace'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

syntax enable
colorscheme gruvbox

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1


" Gitgutter
highlight GitGutterAdd ctermfg=2
highlight GitGutterChange ctermfg=3
highlight GitGutterDelete ctermfg=1
highlight GitGutterChangeDelete ctermfg=4


" Ale
"highlight ALEErrorSign ctermfg=1
"highlight ALEWarningSign ctermfg=3


" Nerdtree
let NERDTreeWinPos="left"
map <C-n> :NERDTreeToggleVCS<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" COC
" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')


" General
set updatetime=250
set number
set relativenumber
"set cursorline
highlight cursorlinenr ctermbg=None
set splitright
set splitbelow
set ignorecase
set smartcase
set colorcolumn=81
set expandtab
set smarttab
set smartindent
set autoindent
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set smartindent
set autoindent


" Always show the signcolumn, otherwise it would shift the text each time
highlight clear signcolumn  " Use same background color for signcolumn
if has("patch-8.1.1564")
  set signcolumn=number
else
  set signcolumn=yes
endif


" LUA
autocmd FileType lua setlocal shiftwidth=2 softtabstop=2


" Mapping
map <C-l> :bnext<CR>
map <C-h> :bprevious<CR>

let g:indentLine_char = '⎸'
