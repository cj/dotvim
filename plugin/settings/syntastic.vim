"mark syntax errors with :signs
let g:syntastic_enable_signs=1
"automatically jump to the error when saving the file
let g:syntastic_auto_jump=0
"show the error list automatically
let g:syntastic_auto_loc_list=1
"don't care about warnings
let g:syntastic_quiet_warnings=0

" let coffee_lint_options = '--csv -f  ~/.vim/configs/coffeelint.json'
" let g:syntastic_coffee_coffeelint_args = '--csv -f ~/.vim/configs/coffeelint.json'
let g:syntastic_coffee_checkers=['coffee']
