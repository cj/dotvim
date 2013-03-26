imap <localleader>z <C-R>=strftime("%Y-%m-%d %X")<CR>
nmap <localleader>z i<C-R>=strftime("%Y-%m-%d %X")<CR><ESC>
let g:calendar_diary="~/.vim/diary"
" Show calendar
map ,c :Calendar<Enter>

" Start weeken on a monday
let g:calendar_monday = 1
" Show 6 calendars
let g:calendar_total_months=5
