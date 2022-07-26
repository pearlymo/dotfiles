set nocompatible
filetype plugin on

call plug#begin()

Plug 'junegunn/seoul256.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'

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

let g:ale_linters = {'python': ['flake8', 'pylint']}
let g:ale_fixers = {'python': ['autopep8', 'yapf']}

let g:netrw_banner = 0
let g:netrw_liststyle=3
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
map <Leader>q :q<CR>
map <Leader>h :nohls<CR>
map <Leader>n :bn<CR>
map <Leader>p :bp<CR>
map <Leader>t :tabe<CR>
map <Leader>e :Explore<CR>
map <Leader>f :FZF<CR>
map <Leader>F :FZF ~<CR>
map <Leader>a :Ag 
map <F2> :ALEFix<CR>
map <F3> :ALEToggle<CR>
map <Leader>] :ALENextWrap<CR>
map <Leader>[ :ALEPreviousWrap<CR>
nnoremap <Leader>1 1gt
nnoremap <Leader>2 2gt
nnoremap <Leader>3 3gt
nnoremap <Leader>4 4gt
nnoremap <Leader>5 5gt
nnoremap <Leader>6 1gt
nnoremap <Leader>7 2gt
nnoremap <Leader>8 3gt
nnoremap <Leader>9 4gt
nnoremap tl :tabnext<CR>
nnoremap th :tabprev<CR>

let python_highlight_all=1
syntax on

autocmd BufNewFile *.html 0r $HOME/.config/nvim/templates/html5.html
autocmd BufNewFile test*.py 0r $HOME/.config/nvim/templates/unittest.py
