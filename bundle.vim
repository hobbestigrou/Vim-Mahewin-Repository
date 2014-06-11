""""""""""""""""""""""""""""""""""""""""""""""""""
"Detect filetype
""""""""""""""""""""""""""""""""""""""""""""""""""
filetype off

""""""""""""""""""""""""""""""""""""""""""""""""""
" Set bundle config
""""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

""""""""""""""""""""""""""""""""""""""""""""""""""
"Load Vim plugin from github
""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'hobbestigrou/vimtips-fortune'
Bundle 'hobbestigrou/Mahewincs'
Bundle 'hobbestigrou/vim-mahewin-hub'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/syntastic'
Bundle 'godlygeek/tabular'
Bundle 'scrooloose/nerdcommenter'
Bundle 'kien/ctrlp.vim'
Bundle 'vim-scripts/Perl-MooseX.Declare-Syntax'
Bundle 'vim-scripts/ZoomWin'
Bundle 'hotchpotch/perldoc-vim'
Bundle 'majutsushi/tagbar'
Bundle 'ervandew/supertab'
Bundle 'tpope/vim-markdown'
Bundle 'mattn/webapi-vim'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'honza/vim-snippets'
Bundle 'garbas/vim-snipmate'
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-powerline'
Bundle 'vim-scripts/netrw.vim'
Bundle 'fs111/pydoc.vim'
Bundle 'airblade/vim-gitgutter'
Bundle 'mattn/gist-vim'
Bundle 'thinca/vim-github'
Bundle 'vim-scripts/Tabmerge'
Bundle 'vim-scripts/django.vim'
Bundle 'rking/ag.vim'
Bundle 'davidhalter/jedi-vim'
Bundle 'groenewege/vim-less'

if filereadable(glob("~/.bundle.local"))
    exe 'source ' . '~/.bundle.local'
endif

filetype plugin indent on
