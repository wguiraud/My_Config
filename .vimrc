"enabling polyglot plugin
set nocompatible

call plug#begin('~/.vim/plugged')

Plug 'lifepillar/vim-mucomplete'

Plug 'nordtheme/vim'

if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'tag': 'legacy' }
endif

call plug#end()

"vim signify confing for async update
set updatetime=100

"expandtab
set expandtab

set nocp 

"filetype detection
"indentation
filetype indent on

"remapping esc key
imap kj <Esc>

"cursor line highlight
set cursorline

"line numbering
set number relativenumber

"syntax
syntax on

"show mode
set showmode

"show command
set showcmd

"color ...
set t_Co=256

"auto indentation
set autoindent

"auto completion
set wildmenu

"tab 2 spaces
set shiftwidth=2

"text width
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

"Hightlight matching brackets [{()}]
set showmatch

"search highlight 
set hlsearch

"to unselect the hl text 
"let@/=""

"incremental search
set incsearch

"ignore case
set ignorecase

"Override the ignorecase option if searching for capital letters.
"This will allow you to search specifically for capital letters.
set smartcase

"show partial command you type in the last line of the screen.
set showcmd

"Set the command to save in history default number is 20. 
set history=100

"tab lenght
set tabstop=2

"Effective tab while editing
set softtabstop=2

"colorcheme
colorscheme nord 


"remapping the backslash key to run ruby programs
nmap  <leader> :!ruby %<Enter>

"o to insert a blank line below 
map <Enter> o<Esc>

"
"Shift + O to insert a blank line above
map <S-Enter> O<Esc>

" remmapping copy to the system clipboard
"nnoremap <C-c> "+y
"vnoremap <C-c> "+y
vnoremap <C-c> "+y
map <C-p> "+p

" swaps the current line with the line above and below it and indents it
" visual mode to move entire blocks of text up and down the page
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-k> <esc>:m .-2<CR>==
nnoremap <C-j> <esc>:m .+1<CR>==
nnoremap <C-k> <esc>:m .-2<CR>==

"method folding activation zo to open fold zc to close fold zM to close all   zR to open all fold
set foldenable
set foldmethod=indent
"method folding deactivation
"set nofoldenable 

"enabling vim built-in plugin manager don't want external plug in manager
packloadall

"vim intellisense for ruby 
"autocmd FileType ruby set omnifunc=rubycomplete#Complete
"autocmd FileType javascript set omnifunc=javascriptcomple#CompleteJS
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags

"vim Mucomple intellisense plug in requirements
set completeopt+=menuone
set completeopt+=noselect
let g:mucomplete#enable_auto_at_startup = 1
