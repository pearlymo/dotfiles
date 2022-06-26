colorscheme seoul256
set background=dark

set nocompatible
filetype off

set clipboard+=unnamedplus

set noswapfile

set maxmempattern=2000000

set textwidth=79
set colorcolumn=80
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set expandtab
set fileformat=unix

set nospell
set ic "make case insensitive for searches
set hls "highlight searches
set showmatch "shows matching pairs of brackets
syntax enable "syntax highlighting is on

set visualbell "disable bell sounds in vim

set splitbelow
set splitright

"Enable folding
set foldmethod=indent
set foldlevel=99

" save undo trees in files
set undofile
set undodir=$HOME/.config/nvim/undo

" number of undo saved
set undolevels=10000
set undoreload=10000

set number
set relativenumber

set encoding=utf-8

set inccommand=nosplit

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

"create and map , to <leader>
let mapleader=","

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

map <C-S> :w<CR>
inoremap <C-S> <C-[>:w<CR>

map <Leader>h :nohls<CR>

au BufNewFile,BufRead *.html,*.css,*.js
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set expandtab |
    \ set autoindent

au BufNewFile,BufRead *.py,*.md,*.txt
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

"Flagging Unnecessary Whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
let python_highlight_all=1
syntax on

autocmd BufNewFile *.html 0r $HOME/.config/nvim/templates/html5.html
autocmd BufNewFile test*.py 0r $HOME/.config/nvim/templates/unittest.py
