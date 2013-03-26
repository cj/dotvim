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
  " Lots of nice default vim settings
  Bundle 'tpope/vim-sensible'
  " Adds a nice info bar to vim
  Bundle 'Lokaltog/vim-powerline'
  " Syntax Validation
  Bundle 'scrooloose/syntastic'
  " Fuzzy file searching
  Bundle 'kien/ctrlp.vim'
  " Comment out lines/blocks of text
  Bundle 'tomtom/tcomment_vim'
  " Auto close quotes etc..
  Bundle 'jiangmiao/auto-pairs'
  " Run ruby commands from vim
  Bundle 'skwp/vim-ruby-conque'
  " Run terminal commands from vim
  Bundle 'rson/vim-conque'
  " Auto align things
  Bundle 'godlygeek/tabular'
  " Get ruby doc info on variables
  Bundle 'danchoi/ri.vim'
  " Fuzzy search methods
  Bundle 'danchoi/rb_nav'
  " Autocomplete
  Bundle 'Shougo/neocomplcache'
  " A Vim plugin which shows a git diff in the 'gutter' (sign column).
  Bundle 'airblade/vim-gitgutter'
  " Git commands
  Bundle 'tpope/vim-fugitive'
  " Search all files in current git repo
  Bundle 'aghareza/vim-gitgrep'
  " Search and replace across all files
  Bundle 'skwp/greplace.vim'
  " Git history
  Bundle 'gregsexton/gitv'
  " Lots of nice default ruby settings
  Bundle 'vim-ruby/vim-ruby'
  " Highlight ruby blocks
  " required
  Bundle 'kana/vim-textobj-user'
  Bundle 'matchit.zip'
  "
  Bundle 'nelstrom/vim-textobj-rubyblock'
  " Adds the end to things like def in ruby
  Bundle 'tpope/vim-endwise'
  " Used to take notes inside vim
  Bundle 'mrtazz/simplenote.vim'
  " Calendar
  Bundle 'mattn/calendar-vim'
  " Visualize VIM undo
  Bundle 'sjl/gundo.vim'

  " ================= Syntax's =======================
  Bundle 'groenewege/vim-less'
  Bundle 'kchmck/vim-coffee-script'

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

" === Plugin settings that need to be in vimrc =======
" Need to figure out why they need to be here

" Syntastic
let g:syntastic_error_symbol = '✗✗'
let g:syntastic_style_error_symbol = '✠✠'
let g:syntastic_warning_symbol = '∆∆'
let g:syntastic_style_warning_symbol = '≈≈'
