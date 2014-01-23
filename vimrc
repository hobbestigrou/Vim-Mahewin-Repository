""""""""""""""""""""""""""""""""""""""""""
" File configuration of vim
"Author: Natal Ngétal alias Hobbestigrou
"Website: http://erakis.im
"Version: 0.1
""""""""""""""""""""""""""""""""""""""""""
let g:mahewin_vim_repository = expand("~/.vim-mahewin-repository/")

exe 'source ' . g:mahewin_vim_repository . 'bundle.vim'
exe 'source ' . g:mahewin_vim_repository . 'alias.vim'
exe 'source ' . g:mahewin_vim_repository . 'map.vim'
exe 'source ' . g:mahewin_vim_repository . 'documentation.vim'
exe 'source ' . g:mahewin_vim_repository . 'plugins.vim'
exe 'source ' . g:mahewin_vim_repository . 'misc_configuration.vim'
exe 'source ' . g:mahewin_vim_repository . 'common.vim'

if filereadable(glob("~/.vimrc.local"))
    exe 'source ' . '~/.vimrc.local'
endif
