set linebreak
set number
set showcmd
set showmatch
set wildmenu
filetype indent on
syntax on

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set backspace=indent,eol,start

set autoindent
set smartindent

set incsearch
set hlsearch
set ignorecase
set smartcase

set complete-=i
set encoding=utf-8
set display+=lastline

set completeopt=menuone,preview,longest

inoremap {<CR> {<CR>}<Esc>O
inoremap ( ()<Left>
inoremap { {}<Left>
inoremap <expr> ) getline('.')[col('.')-1] == ")" ? "\<Right>" : ")"
inoremap <expr> } getline('.')[col('.')-1] == "}" ? "\<Right>" : "}"
