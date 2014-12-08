#Tool
Tool allows you to keep binaries separate from your _PATH_ in toolboxes.
It comes with toolbox utility, which is intended to manage toolboxes.

##Configuration
Tool uses environment variable _TOOLS\_PATH_ to store path of its directory. See
[Before First Use](BeforeFirstUse.md) for more info about setup. After setup,
TOOLS\_PATH directory will contain file _.config_ an toolbox directories named
_tb-TOOLBOX\_NAME_ where _TOOLBOX\_NAME_ is name of toolbox, so name of
directory for toolbox _test_ should be _tb-test_.

##Usage
First, copy executables you want to keep separate from your _PATH_ to
_TOOLS\_PATH/tb-TOOLBOX\_NAME_ (where _TOOLBOX\_NAME_ is name which you set via
toolbox script in Before First Use).

After that, your toolbox is ready to use and you can run your binaries by
running

    $ tool tool-name [arguments]

And remember: you can simply switch between multiple toolboxes by making new
directory for them and running

    $ toolbox new-toolbox-name

Enjoy!

##License
All scripts here are licensed under GNU GPL v3 (see
  [COPYING](COPYING) for more info)

[Czech translation / Český překlad](cz/README_CZ.md)
