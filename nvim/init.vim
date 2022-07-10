set nocompatible
filetype plugin on

call plug#begin()

Plug 'junegunn/seoul256.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

set noswapfile
set encoding=utf-8
set clipboard+=unnamedplus
set maxmempattern=2000000
set visualbell
set undofile
set undodir=$HOME/.config/nvim/undo
set undolevels=10000
set undoreload=10000
set hidden
set nobackup
set nowritebackup
set nospell
set ic
set hls
set showmatch
syntax enable
set nonumber
set norelativenumber

au BufNewFile,BufRead *.html,*.css,*.js
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set expandtab |
    \ set autoindent

set textwidth=79
set colorcolumn=80
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set expandtab
set fileformat=unix

colorscheme seoul256
set background=dark

let g:fzf_layout = {
  \ 'window': {
    \ 'border': 'top',
    \ 'height': 9,
    \ 'relative': v:false,
    \ 'width': 1,
    \ 'yoffset': 1,
  \ }
\ }

let g:fzf_preview_window = []

let mapleader=","

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

map <Leader>s :w<CR>
map <Leader>h :nohls<CR>
map <Leader>f :Files<CR>
map <Leader>] :bn<CR>
map <Leader>[ :bp<CR>

highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
let python_highlight_all=1
syntax on

autocmd BufNewFile *.html 0r $HOME/.config/nvim/templates/html5.html
autocmd BufNewFile test*.py 0r $HOME/.config/nvim/templates/unittest.py
