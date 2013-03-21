""""""""""""""""""""""""""""""""""""""""""
" File configuration of vim
"Author: Natal Ngétal alias Hobbestigrou
"Website: http://erakis.im
"Version: 0.1
""""""""""""""""""""""""""""""""""""""""""
let g:mahewin_vim_repository = expand("~/.vim_mahewin_repository/")

exe 'source ' . g:mahewin_vim_repository . 'bundle.vim'
exe 'source ' . g:mahewin_vim_repository . 'map.vim'
exe 'source ' . g:mahewin_vim_repository . 'documentation.vim'
exe 'source ' . g:mahewin_vim_repository . 'plugins.vim'
exe 'source ' . g:mahewin_vim_repository . 'misc_configuration.vim'

"""""""""""""""""""""""""""""""""""""""""""
" Active support mouse in shell
"""""""""""""""""""""""""""""""""""""""""""
set mouse=a

""""""""""""""""""""""""""""""""""""""""""""""""""
"Active spelling in french
""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufEnter *.txt set spell
autocmd BufEnter *.txt set spelllang=fr

exe 'source ' . g:mahewin_vim_repository . 'common.vim'
