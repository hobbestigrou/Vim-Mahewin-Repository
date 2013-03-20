""""""""""""""""""""""""""""""""""""""""""
" File configuration of vim
"Author: Natal Ngétal alias Hobbestigrou
"Website: http://erakis.im
"Version: 0.1
""""""""""""""""""""""""""""""""""""""""""

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
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/syntastic'
Bundle 'godlygeek/tabular'
Bundle 'scrooloose/nerdcommenter'
Bundle 'kien/ctrlp.vim'
Bundle 'mileszs/ack.vim'
Bundle 'vim-scripts/Perl-MooseX.Declare-Syntax'
Bundle 'vim-scripts/ZoomWin'
Bundle 'hotchpotch/perldoc-vim'
Bundle 'majutsushi/tagbar'
Bundle 'ervandew/supertab'
Bundle 'tpope/vim-markdown'
Bundle 'mattn/webapi-vim'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/snipmate-snippets"
Bundle 'garbas/vim-snipmate'
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-powerline'
Bundle 'vim-scripts/netrw.vim'
Bundle 'fs111/pydoc.vim'
Bundle 'airblade/vim-gitgutter'

filetype plugin indent on

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
"Mapping to insert date
""""""""""""""""""""""""""""""""""""""""""""""""""
imap \date  <C-R>=strftime("%d/%m/%Y")<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
"Active spelling in french
""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufEnter *.txt set spell
autocmd BufEnter *.txt set spelllang=fr

""""""""""""""""""""""""""""""""""""""""""""""""""
"Documentation
""""""""""""""""""""""""""""""""""""""""""""""""""
runtime ftplugin/man.vim
"au BufReadPost *.pl   set keywordprg=perldoc\ -f
"au BufReadPost *.pm   set keywordprg=perldoc\ -f
au BufReadPost .vimrc map K :exe ":help ".expand("<cword>")<CR>
au FileType perl map K :exe ":Perldoc "substitute(expand("<cWORD>"), '\v[;]', '', 'g')<CR>
au FileType python map K :exe ":Pydoc ".expand("<cword>")<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
"Mapping Perl
""""""""""""""""""""""""""""""""""""""""""""""""""
map ps :!perl -c %<CR>
map pd :!perl -d %<CR>
map px :!perl %<CR>
map pi :!perl -Ilib %<CR>
map pt :!prove -l %<CR>

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

let g:mahewin_vim_repository = expand("~/.vim_mahewin_repository/")
exe 'source ' . g:mahewin_vim_repository . 'common.vim'

let g:syntastic_enable_signs=1
let g:syntastic_enable_balloons = 1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open = 1

let g:syntastic_mode_map = { 'mode': 'active',
  \ 'active_filetypes': ['perl', 'python', 'c'],
  \ 'passive_filetypes': ['php'] }

ino <c-j> <c-r>=snipMate#TriggerSnippet()<cr>
snor <c-j> <esc>i<right><c-r>=snipMate#TriggerSnippet()<cr>
let g:miniBufExplMapCTabSwitchWindows = 1

nmap <F8> :TagbarToggle<CR>
nmap <F11> :NERDTree<CR>

let g:ackprg="ack-grep -H --nocolor --nogroup --column"
