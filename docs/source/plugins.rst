Plugins
-------
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
