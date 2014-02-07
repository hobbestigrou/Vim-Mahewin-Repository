""""""""""""""""""""""""""""""""""""""""""""""""""
"To use ranger file manager
""""""""""""""""""""""""""""""""""""""""""""""""""
" Use ranger as vim file manager
function! Ranger()
    " Get a temp file name without creating it
    let tmpfile = substitute(system('mktemp -u'), '\n', '', '')

    " Launch ranger, passing it the temp file name
    silent exec '!RANGER_RETURN_FILE='.tmpfile.' ranger'
    if v:shell_error != 0
         echoerr 'Ranger is not installed'
    endif

    " If the temp file has been written by ranger
    if filereadable(tmpfile)
        " Get the selected file name from the temp file
        let filetoedit = system('cat '.tmpfile)
        exec 'edit '.filetoedit
        call delete(tmpfile)
    endif
    redraw!

endfunction

nmap <leader>r :call Ranger()<cr>
command! Ranger call Ranger()

""""""""""""""""""""""""""""""""""""""""""""""""""
"Update the repository
""""""""""""""""""""""""""""""""""""""""""""""""""
"A function to update if necessary
function! Get_update()
    "Get the current path and change the directory to update the good
    "repository
    let l:current_path = getcwd()
    let l:path = '~/.vim-mahewin-repository'
    exec 'cd' l:path

    let l:last_local_commit = system('git rev-parse HEAD')
    let l:last_remote_comit = system('git ls-remote origin -h refs/heads/master |cut -f1')

    if l:last_local_commit != l:last_remote_comit
        echo  'Need to be updated, launches updated'
        :Git pull origin master
    else
        echo 'Already up-to-date.'
    endif

    exec 'cd' l:current_path
endfunction

nmap <leader>u :call Get_update()<cr>
command! GetUpdateVimMahewinRepository call Get_update()

function! Create_git_branch(...)
    if (a:0)
        exec 'Git checkout -b' a:1
    else
        let l:branch_name = input('Give a branch name: ')
        exec 'Git checkout -b' l:branch_name
    endif

    return ''
endfunction

nmap <leader>gbc :call Create_git_branch()<cr>
command! -nargs=1 CreateGitBranch call Create_git_branch(<f-args>)
