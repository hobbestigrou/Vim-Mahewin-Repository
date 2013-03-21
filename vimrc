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

""""""""""""""""""""""""""""""""""""""""""
" Active color syntax and indent
""""""""""""""""""""""""""""""""""""""""""
set nocompatible
syntax on
colorscheme Mahewincs "Thème pour la coloration syntaxique
set ai "Pour l'autoindetation
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent

""""""""""""""""""""""""""""""""""""""""""
" Add column delimiter
""""""""""""""""""""""""""""""""""""""""""
set colorcolumn=80
highlight ColorColumn ctermbg=7

""""""""""""""""""""""""""""""""""""""""""
" Active number of line
""""""""""""""""""""""""""""""""""""""""""
set number
set numberwidth=3

""""""""""""""""""""""""""""""""""""""""""
" Active statusbar
""""""""""""""""""""""""""""""""""""""""""
set laststatus=2
set statusline=%t%m%r%h%w\ %{fugitive#statusline()}\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [FENC=%{&fileencoding}]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v]\ [%p%%]\ [LEN=%L]\


"""""""""""""""""""""""""""""""""""""""""""
"Show matching brackets
"""""""""""""""""""""""""""""""""""""""""""
set showmatch

"""""""""""""""""""""""""""""""""""""""""""
"Search options
"""""""""""""""""""""""""""""""""""""""""""
set incsearch
set hlsearch
set ignorecase
set smartcase

"""""""""""""""""""""""""""""""""""""""""""
"Menu completion
"""""""""""""""""""""""""""""""""""""""""""
set wildmenu

"""""""""""""""""""""""""""""""""""""""""""
" Active confim when we quit without save
"""""""""""""""""""""""""""""""""""""""""""
set confirm

"""""""""""""""""""""""""""""""""""""""""""
"Show cursor
"""""""""""""""""""""""""""""""""""""""""""
set cursorline

"""""""""""""""""""""""""""""""""""""""""""
" Active support mouse in shell
"""""""""""""""""""""""""""""""""""""""""""
set mouse=a

""""""""""""""""""""""""""""""""""""""""""""""""""
"Active spelling in french
""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufEnter *.txt set spell
autocmd BufEnter *.txt set spelllang=fr

""""""""""""""""""""""""""""""""""""""""""""""""""
"Autocompletion
""""""""""""""""""""""""""""""""""""""""""""""""""
set omnifunc=syntaxcomplete#Complete

""""""""""""""""""""""""""""""""""""""""""""""""""
"Detect tabulation and tabs in end of line
""""""""""""""""""""""""""""""""""""""""""""""""""
set list
set lcs:tab:>-,trail:X

""""""""""""""""""""""""""""""""""""""""""""""""""
"Can use backspace in all case
""""""""""""""""""""""""""""""""""""""""""""""""""
set backspace=2

exe 'source ' . g:mahewin_vim_repository . 'common.vim'
