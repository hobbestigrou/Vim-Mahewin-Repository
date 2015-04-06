Plugins
=======
Vim-Mahewin-Repository comes with plugins and are configured to most. Each
configuration options can be overridden in the configuration file vimrc.local.

Syntastic
---------
Syntastic is a awesome plugin to check syntax displays any resulting errors.

Symbol style
____________
When errors or warnings  a symbol is displayed on the side of the line.
Vim-Mahewin-Repository provides custom style for syntastic_error_symbol ✗,
for syntastic_style_error_symbol S✗, for syntastic_warning_symbol ⚠, and for
syntastic_style_warning_symbol S⚠.

Active file
___________
Currently Vim-Mahewin-Repository check the syntax automatically at the opening
and closing and saving files for Perl, Python, and C language.

Passive file
____________
To check syntax of PHP file you need explicitly call SyntasticCheck command.

Information
___________
To see information about the current file you can call SyntasticInfo command.

Vundle
------
Vundle is a Vim plugin manager.

Update
______
To update plugins it's possible to use :BundleInstall! or keymap <leader>vu.

Tagbar
------
Tagbar is a Vim plugin for browsing the tags of source code files. It provides
a sidebar that displays the ctags, need install exuberant-ctags, use F9 to
toggle the tagbar window.

NERDTree
--------
The NERD tree allows you to explore your filesystem and to open files and
directories. Use F11 to display the tree and q to quit the tree.

Fortune vimtips
---------------
Fortune vimtips is a project inspired by fortune software to display vimtips.
Open a new horizontal split buffer to display the vimtips.

Display in a new window
_______________________
By default it's display in a message, but it's be possible to display in a new
buffer:

.. code-block:: vim

    let g:fortune_vimtips_display_in_window = 0

Be display in a new vertical split.

Disable auto display
____________________
Activate by default it's obvious to disable auto display, to deactivate the
auto display add this line on your .vimrc.local:

.. code-block:: vim

    let g:fortune_vimtips_auto_display = 0

Then it's possible to display vimtips with the command:

.. code-block:: vim

    :Fortune

When you want learn few new things about vim.

Custom plugin
-------------

Install
_______
To install plugins that are not provided by Vim-Mahewin-Repository it is
possible to create a file call .bundle.local in the user directory:


.. code-block:: vim

    Bundle 'benmills/vimux'

After adding the line, it must run the command :BundleInstall that all. But if
you find an interesting plugin do enjoy the community and made a pull request.

Uninstall
_________
To uninstall a custom plugin, remove the line of the file and run the command
:BundleClean to remove the plugin of .vim directory.
