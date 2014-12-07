#Tool
Tool allows you to keep binaries separate from your PATH in toolboxes.
It comes with toolbox utility, which is intended to manage toolboxes.

##Configuration
Tool uses environment variable TOOLS_PATH for determine where to find .config
file. It reads information about active toolbox from TOOLS_PATH/.config and then
invokes file TOOLS_PATH/tb-ACTIVE_TOOLBOX/TOOL_NAME.

##Before First Use
First you need to set up directory for toolboxes (in our example, we'll assume,
that you've decided to place it to ~/tools) and first toolbox.

    $ mkdir ~/tools
    $ mkdir ~/tools/tb-test

Open your ~/.bashrc or ~/.bash_profile and add this line to the end:

    export TOOLS_PATH="/home/YOUR_USERNAME/tools"

Two notes here:
1. It is important to not include last slash to TOOLS_PATH
2. For some reason you must use absolute path instead of ~/*

Run

    $ toolbox test

to prepare .config file and set toolbox to tb-test (yes, it'll add tb- prefix).

Now just copy executables, that you don't want in PATH, to ~/tools/tb-test and
run them with

    $ tool tool-name [arguments]
