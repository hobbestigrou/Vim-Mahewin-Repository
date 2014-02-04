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
