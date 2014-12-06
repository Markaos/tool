#Tool
Tool allows you to keep binaries separate from your PATH in toolboxes.
It comes with toolbox utility, which is intended to manage toolboxes.

##Configuration
Tool uses environment variable TOOLS_PATH for determine where to find .config
file. It reads information about active toolbox from TOOLS_PATH/.config and then
invokes file TOOLS_PATH/tb-ACTIVE_TOOLBOX/TOOL_NAME.
