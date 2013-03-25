" fugitive.git
" ========================================
" For fugitive.git, dp means :diffput. Define dg to mean :diffget
nnoremap <silent> ,dg :diffget<CR>
nnoremap <silent> ,dp :diffput<CR>
nnoremap ,gb :Gblame<CR>
nnoremap ,gs :Gstatus<CR>
nnoremap ,gd :Gdiff<CR>
nnoremap ,gl :Glog<CR>
nnoremap ,gc :Gcommit<CR>
nnoremap ,gp :Git push<CR>
nnoremap ,gw :Gwrite<CR>

