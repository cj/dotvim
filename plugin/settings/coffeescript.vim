" au BufWritePost *.coffee silent CoffeeMake! -c -l -o /tmp | cwindow | redraw!
" Don't write the js file as that just gets messy
" au BufWritePost *.coffee silent CoffeeLint! | cwindow | redraw!
nnoremap ,cc :CoffeeMake! -b<CR>

