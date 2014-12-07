#Before First Use
First, you need to set up directory for toolboxes and first toolbox. But before
that you must decide where to place them. It should be easy accessible, for
example ~/tools.

Open your ~/.bashrc or ~/.bash_profile and add this line to the end:

    export TOOLS_PATH="/path/to/tools/dir"

Two notes here:
1. It is important to not include last slash to TOOLS_PATH
2. For some reason you must use absolute path instead of ~/*

Now make directories

    $ mkdir TOOLS_PATH
    $ mkdir TOOLS_PATH/tb-test

And run

    $ toolbox test

to prepare .config file and set toolbox to tb-test (yes, it'll add tb- prefix).

Tool is now ready to use
