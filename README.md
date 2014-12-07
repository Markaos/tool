#Tool
Tool allows you to keep binaries separate from your PATH in toolboxes.
It comes with toolbox utility, which is intended to manage toolboxes.

##Configuration
Tool uses environment variable TOOLS_PATH for determine where to find .config
file. It reads information about active toolbox from TOOLS_PATH/.config and then
executes file TOOLS_PATH/tb-ACTIVE_TOOLBOX/TOOL_NAME.

##Before First Use
See [Before First Use](BeforeFirstUse.md) for more info

##Usage
First, copy executables you want to keep separate from your PATH to
TOOLS_PATH/tb-TOOLBOX_NAME (where TOOLBOX_NAME is name which you set via toolbox
script in Before First Use).

After that, your toolbox is ready to use and you can run your binaries by
running

    $ tool tool-name [arguments]

And remember: you can simply switch between multiple toolboxes by making new
directory for them and running

    $ toolbox new-toolbox-name

Enjoy!

##License
All scripts here are licensed under GNU GPL v3 license (see
  [COPYING](COPYING) for more info)
