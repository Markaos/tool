#!/bin/bash

# Copyright (C) 2014 Marek Černoch
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

if [ $1 = "--help" ]; then
  echo  "Tool is a command line utility to keep binaries outside the PATH,"\
        " but still easy accessible."
  echo  "Synopsis"
  echo  "  $0 tool-name [arguments...] (to run tool-name with arguments as arguments)"
  echo  "  -- OR --"
  echo  "  $0 --help (to print this)"
  exit 0;
fi

if [ -z "$TOOLS_PATH" ]; then
  echo "Warning: variable TOOLS_PATH was not set, using default (/usr/tools)"
  echo "Tip: you can place 'export TOOLS_PATH=\"/path/to/tools/dir\"' into "\
       "your ~/.bashrc or ~/.bash_profile to suppress this warning"
  TOOLS_PATH="/usr/tools";
fi

args=$@
args=${args/$0/""}
args=${args/$1/""}

epath=$(cat $TOOLS_PATH/.config)
"$TOOLS_PATH/tb-$epath/$1" $args
