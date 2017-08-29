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
nmap <Leader>gp :Git push origin `git rev-parse --abbrev-ref HEAD`<CR>
nmap <Leader>gpu :Git pull origin `git rev-parse --abbrev-ref HEAD`<CR>

noremap <c-w>- <c-w>t<c-w>K
noremap <c-w>\| <c-w>t<c-w>H
