" =============== Vundle Initialization ===============
" This loads all the plugins in ~/.vim/bundle
" https://github.com/gmarik/vundle

  filetype off                   " required!

  set rtp+=~/.vim/bundle/vundle/
  call vundle#rc()

  " let Vundle manage Vundle
  " required!
  Bundle 'gmarik/vundle'
  " My Bundles here:
  "
  " original repos on github
  Bundle 'scrooloose/nerdtree'
  Bundle 'flazz/vim-colorschemes'
  Bundle 'tpope/vim-sensible'

  " vim-scripts
  Bundle 'lastpos.vim'

" ================ General Config ====================
set number                      "Line numbers are good
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set hlsearch                    "Hilight searches by default

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ================ Completion =======================

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif
