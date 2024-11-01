" Enabling polyglot plugin
set nocompatible

call plug#begin('~/.vim/plugged')

Plug 'lifepillar/vim-mucomplete'
Plug 'arcticicestudio/nord-vim'
Plug 'https://github.com/vim-scripts/dbext.vim.git'

if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'tag': 'legacy' }
endif

call plug#end()


"if (has("termguicolors"))
"  set termguicolors
"endif

" Vim signify config for async update
set updatetime=100

" Expandtab
set expandtab

set nocp

" Filetype detection
" Indentation
filetype indent on

" Remapping esc key
imap kj <Esc>

" cs to clear search
nnoremap cs :let @/=""<CR>

" Cursor line highlight
set cursorline

" Line numbering
set number relativenumber

" Syntax
syntax on

" Show mode
set showmode

" Show command
set showcmd

" Color ...
set t_Co=256

" Auto indentation
set autoindent

" Auto completion
set wildmenu

" Tab 2 spaces
set shiftwidth=2

" Text width
set textwidth=80

"
set wrap

"
set linebreak

"
set wrapmargin=2

"
set scrolloff=5

"
set sidescrolloff=15

"
set laststatus=2

"
set ruler

" Highlight matching brackets [{()}]
set showmatch

" Search highlight
set hlsearch

" To unselect the hl text
" let@/=""

" Incremental search
set incsearch

" Ignore case
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Set the command to save in history default number is 20.
set history=100

" Tab length
set tabstop=2

" Effective tab while editing
set softtabstop=2

" Color scheme
colorscheme nord

" Remapping the backslash key to run ruby programs
nmap <leader> :!ruby %<Enter>

" o to insert a blank line below
map <Enter> o<Esc>

" Shift + O to insert a blank line above
map <S-Enter> O<Esc>

" Remapping copy to the system clipboard
" nnoremap <C-c> "+y
" vnoremap <C-c> "+y
vnoremap <C-c> "+y
map <C-p> "+p

" Swaps the current line with the line above and below it and indents it
" Visual mode to move entire blocks of text up and down the page
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-k> <esc>:m .-2<CR>==
nnoremap <C-j> <esc>:m .+1<CR>==
nnoremap <C-k> <esc>:m .-2<CR>==

" Method folding activation zo to open fold zc to close fold zM to close all   zR to open all fold
set foldenable
set foldmethod=indent
" Method folding deactivation
" set nofoldenable

" Enabling vim built-in plugin manager don't want external plug in manager
packloadall

" Vim intellisense for ruby
" autocmd FileType ruby set omnifunc=rubycomplete#Complete
" autocmd FileType javascript set omnifunc=javascriptcomple#CompleteJS
" autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
" autocmd FileType css set omnifunc=csscomplete#CompleteCSS
" autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags

" Vim Mucomple intellisense plug in requirements
set completeopt+=menuone
set completeopt+=noselect
let g:mucomplete#enable_auto_at_startup = 1


hi Comment ctermfg=Gray

