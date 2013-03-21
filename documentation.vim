""""""""""""""""""""""""""""""""""""""""""""""""""
"Documentation
""""""""""""""""""""""""""""""""""""""""""""""""""
runtime ftplugin/man.vim
au BufReadPost .vimrc map K :exe ":help ".expand("<cword>")<CR>
au FileType perl map K :exe ":Perldoc "substitute(expand("<cWORD>"), '\v[;]', '', 'g')<CR>
au FileType python map K :exe ":Pydoc ".expand("<cword>")<CR>
