""""""""""""""""""""""""""""""""""""""""""""""""""
"Mapping to insert date
""""""""""""""""""""""""""""""""""""""""""""""""""
imap \date  <C-R>=strftime("%d/%m/%Y")<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
"Mapping Perl
""""""""""""""""""""""""""""""""""""""""""""""""""
map ps :!perl -c %<CR>
map pd :!perl -d %<CR>
map px :!perl %<CR>
map pi :!perl -Ilib %<CR>
map pt :!prove -l %<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
"Mapping git
""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <Leader>gp :!git push `git remote` `git rev-parse --abbrev-ref HEAD`<CR>
nmap <Leader>gpu :!git pull `git remote` `git rev-parse --abbrev-ref HEAD`<CR>
