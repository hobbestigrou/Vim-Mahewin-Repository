Common
======
Some useful intersting features.

Ranger
-----
A command to open ranger to navigate in the file system. Ranger is a file with
Vim key bindings. It provides a minimalistic and nice curses interface with a
view on the directory hierarchy. Ranger must be installed for this command to
work. For Debian and derivatives:

.. code-block:: bash
    sudo apt-get install ranger

You have you have two possibility. Call the command or use the mapping.

With the command:

.. code-block:: vim

    :Ranger

With the mapping:

.. code-block:: vim

    <leader>r

Not required if you do not want to use.

Get update
----------
To get the latest version, you have two possibility. Call the command or use
the mapping.

With the command:

.. code-block:: vim

    :GetUpdateVimMahewinRepository

With the mapping:

.. code-block:: vim

    <leader>u

It takes the master version of git repository.

Create Git Branch
-----------------
A function to create a local branch, you have two possibility. Call the command
or use the mapping.

.. code-block:: vim

    :Create_git_branch

With the mapping:

.. code-block:: vim

    <leader>gbc

It uses the option -b from checkout is therefore moves in the branch created.
