" http://vimdoc.sourceforge.net/htmldoc/options.html

set nocompatible                 " run vim mode, not vi

call pathogen#infect()
call pathogen#helptags()

syntax on
filetype on
filetype indent on
filetype plugin on

set number                       " turn on line numbering
set wrap!                        " turn off word wrapping
set smartindent                  " enable smart indent
set tabstop=2                    " set tab character
set expandtab                    " turn tabs into whitespace
set shiftwidth=2                 " indent width for autoindent
set ruler                        " show the cursor position
set hlsearch                     " search highlighting
set cursorline                   " highlight current line
set linespace=3                  " set spacing between lines
set autoindent                   " auto indentation
set smarttab                     " insert tabs in context
set scrolloff=3                  " show 3 lines while scrolling
set autoread                     " read in changes made externally
set showcmd                      " display incomplete commands
set history=100                  " keep 100 lines of command line history

" disable sound on errors
set noerrorbells
set novisualbell

" turn on incremental search with ignore case
set incsearch
set ignorecase
set smartcase

" turn on utf-8 file encoding
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8

" showing match pairs and display time
set showmatch
set showmode
set mat=5

" show trailing spaces
set list listchars=tab:»·,trail:•

" style
syntax enable
set background=light
colorscheme solarized

if has("gui_running")
  " set transparency=10
  set guioptions+=TLlRrb      " adds toolbar and scrollbars
  set guioptions-=TLlRrb      " then removes toolbar and scrollbars
endif

" show/hide nerdtree
" https://github.com/scrooloose/nerdtree
nmap <leader>n :NERDTreeToggle<CR>

" load the gundo window
" http://sjl.bitbucket.org/gundo.vim
" map <leader>g :GundoToggle<CR>

" map leader p to control p
" https://github.com/kien/ctrlp.vim
" map <leader>p :CtrlP<CR>

" surround
" https://github.com/tpope/vim-surround

