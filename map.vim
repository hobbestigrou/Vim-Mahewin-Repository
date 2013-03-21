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
"Mapping to awesome plugin Tagbar and NERDTree
""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F8> :TagbarToggle<CR>
nmap <F11> :NERDTree<CR>
