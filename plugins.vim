"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Syntastic configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_enable_signs = 1
let g:syntastic_enable_balloons = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1

let g:syntastic_mode_map = { 'mode': 'active',
  \ 'active_filetypes': ['perl', 'python', 'c'],
  \ 'passive_filetypes': ['php'] }
let g:syntastic_error_symbol = '✗'
let g:syntastic_style_error_symbol = 'S✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_style_warning_symbol = 'S⚠'


ino <c-j> <c-r>=snipMate#TriggerSnippet()<cr>
snor <c-j> <esc>i<right><c-r>=snipMate#TriggerSnippet()<cr>
let g:miniBufExplMapCTabSwitchWindows = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Ag configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:aghighlight = 1
cabbrev Ag Ag!

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Gist configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gist_detect_filetype = 1
let g:gist_show_privates = 1
let g:gist_post_private = 1
let g:gist_clip_command = 'xclip -selection clipboard'

"""""""""""""""""""""""""""""""""""""""""""""""""
"Fugitive
"""""""""""""""""""""""""""""""""""""""""""""""""
map <Leader>gs :Gstatus<CR>
map <Leader>gd :Gdiff<CR>
map <Leader>gc :Gcommit<CR>
map <Leader>gb :Gblame<CR>
map <Leader>gl :Glog<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Ctrlp
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_user_command = 'ag --nogroup --nobreak --noheading --nocolor -g "" %s '

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Fortune vimtips
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:fortune_vimtips_display_in_window = 0

if !exists('g:fortune_display_in_gvim')
    let g:fortune_display_in_gvim = 0
endif

if has("gui_running") && !g:fortune_display_in_gvim
    let g:fortune_vimtips_auto_display = 0
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>vu :BundleInstall!<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F9> :TagbarToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F11> :NERDTree<CR>

let g:jedi#use_tabs_not_buffers = 1

au FileType go nmap <Leader>gr <Plug>(go-run)
au FileType go nmap <Leader>b <Plug>(go-build)
au FileType go nmap <Leader>t <Plug>(go-test)
au FileType go nmap <Leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
