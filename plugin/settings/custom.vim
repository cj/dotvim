" Use the same shell environment as your terminal
set shell=bash\ -l

" Ignore case on search
set ignorecase

" Comment out code
map <silent> I :TComment<CR>

" Save
map <silent> W :w<CR>

" Redo
map <silent> r :red<CR>

" Text formatting
set fillchars=diff:⣿,vert:│
set listchars=tab:▸\ ,extends:❯,precedes:❮
set showbreak=↪
set wrap

" Find out what syntax color the var is using
nmap ,v :echo synIDattr(synID(line("."), col("."), 1), "name")<CR>

" Split line (sister to [J]oin lines)
" The normal use of S is covered by cc, so don't worry about shadowing it.
nnoremap S i<cr><esc><right>mwgk:silent! s/\v +$//<cr>:noh<cr>`w

" Resize splits when the window is resized
au VimResized * :wincmd =

" Allow you to move up and down on wrapped lines
noremap j gj
noremap k gk
noremap gj j
noremap gk k

" Makes splitting windows more natural
set splitbelow splitright

" Strips white space on save
au BufWritePre * :StripTrailingWhitespaces

" Always retab and make sure we're using spaces and not tabs
function! DoReTab()
  " Don't strip on these filetypes
  if &ft =~ 'taskpaper'
      return
  endif
  set et | retab
endfun
au BufWritePre * call DoReTab()

" Previous buffer for the current window
nnoremap <silent> ,p <C-^>
onoremap <silent> ,p <C-^>

" Clear hidden buffers
command! -nargs=? DeleteHiddenBuffers call s:DeleteHiddenBuffers()
function! s:DeleteHiddenBuffers()
    let i=1
    let lastbuf=bufnr("$")
    while i <= lastbuf
        if buflisted(i) && bufwinnr(i) == -1
        sil exe "bdelete" i
        endif
        let i=i+1
    endwhile
endfunction
nmap <silent> ,c :DeleteHiddenBuffers<CR>

" Get the current highlight group. Useful for then remapping the color
map ,hi :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>

" Source current file Cmd-% (good for vim development)
map <D-%> :so %<CR>

" Align text
nmap ,a :Tabularize /
vmap ,a :Tabularize /

" Make tab in visual mode indent code
vmap <tab> >gv
vmap <s-tab> <gv

" New tab
map <silent> ,n :tabnew .<cr>

" Zoom in and out of current window with ,gz
map <silent> ,gz <C-w>o

" Use numbers to pick the tab you want (like iTerm)
map <silent> ,1 :tabn 1<cr>
map <silent> ,2 :tabn 2<cr>
map <silent> ,3 :tabn 3<cr>
map <silent> ,4 :tabn 4<cr>
map <silent> ,5 :tabn 5<cr>
map <silent> ,6 :tabn 6<cr>
map <silent> ,7 :tabn 7<cr>
map <silent> ,8 :tabn 8<cr>
map <silent> ,9 :tabn 9<cr>

" Create window splits easier. The default
" way is Ctrl-w,v and Ctrl-w,s. I remap
" this to vv and ss
nnoremap <silent> vv :vne<CR>
nnoremap <silent> ss <C-w>n

"" NERDTree Changes
" Toggle NERDTree
nmap <silent><C-s> :NERDTreeToggle<CR>

" Make sure to load the bash profile and load correct ruby version if using
" RVM
set shell=/bin/bash
