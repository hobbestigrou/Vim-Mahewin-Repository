""""""""""""""""""""""""""""""""""""""""""""""""""
"Detect filetype
""""""""""""""""""""""""""""""""""""""""""""""""""
filetype off

""""""""""""""""""""""""""""""""""""""""""""""""""
" Set bundle config
""""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""
"Load Vim plugin from github
""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'hobbestigrou/vimtips-fortune'
Plugin 'hobbestigrou/Mahewincs'
Plugin 'hobbestigrou/vim-mahewin-hub'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'godlygeek/tabular'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/Perl-MooseX.Declare-Syntax'
Plugin 'vim-scripts/ZoomWin'
Plugin 'hotchpotch/perldoc-vim'
Plugin 'majutsushi/tagbar'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-markdown'
Plugin 'mattn/webapi-vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'honza/vim-snippets'
Plugin 'garbas/vim-snipmate'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/vim-powerline'
Plugin 'vim-scripts/netrw.vim'
Plugin 'fs111/pydoc.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'mattn/gist-vim'
Plugin 'thinca/vim-github'
Plugin 'vim-scripts/Tabmerge'
Plugin 'vim-scripts/django.vim'
Plugin 'rking/ag.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'groenewege/vim-less'

if filereadable(glob("~/.bundle.local"))
    exe 'source ' . '~/.bundle.local'
endif

call vundle#end()
filetype plugin indent on
