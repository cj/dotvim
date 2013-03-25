let g:NERDTreeHijackNetrw = 0
let g:loaded_netrw       = 1 " Disable netrw
let g:loaded_netrwPlugin = 1 " Disable netrw
au VimEnter * :NERDTreeToggle
au VimEnter * :wincmd p
" Make nerdtree look nice
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 30
