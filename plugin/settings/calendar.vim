" imap ,z <C-R>=strftime("%Y-%m-%d %X")<CR>
nmap ,z i<C-R>=strftime("%Y-%m-%d %X")<CR><ESC>
let g:calendar_diary="~/.vim/diary"
" Show calendar
nmap ,c :Calendar<cr>

" Start weeken on a monday
let g:calendar_monday = 1
" Show 4 calendars
let g:calendar_total_months=4
let g:calendar_focus_today = 1
