call plug#begin('~/.vim/plugged')
Plug 'dracula/vim',{'as':'dracula'}
call plug#end()

colorscheme dracula

set cursorline
set lazyredraw
set linebreak
set number
set relativenumber
set showcmd
set showmatch
set wildmenu
filetype indent on

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
