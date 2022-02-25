set nocompatible
filetype off

call plug#begin("$XDG_CONFIG_HOME/nvim/plugged")
    Plug 'jnurmine/Zenburn'
call plug#end()

set clipboard+=unnamedplus

set noswapfile

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

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"create and map , to <leader>
let mapleader=","

let g:SimplyFold_docstring_preview=0
let g:SimpylFold_fold_docstring=0
let gSimpylFold_fold_import=0
let g:SimpylFold_fold_blank=0

let g:user_emmet_leader_key=','

au BufNewFile,BufRead *.py
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

if has('gui_running')
	set background=dark
	colorscheme solarized
else
	colorscheme zenburn
endif
