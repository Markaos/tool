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

# Translations

if [ $LANGUAGE != "" ]; then
  if [ $LANGUAGE = "cs_CZ" ]; then
    too_few_arguments="Tool potřebuje k běhu alespoň jeden parametr (napište $0 --help pro nápovědu)"
    tools_path_not_set="Varování: proměnná TOOLS_PATH není nastavena, používá se výchozí hodnota (/usr/tools)"
    warning_tip="Tip: vložte 'export TOOLS_PATH=\"/cesta/ke/složce/nástrojů\"' do souboru ~/.bashrc nebo ~/.bash_profile pro potlačení tohoto varování";

    print_help() {
      echo  "Tool je terminálová utilita pro uchovávání spustitelných souborů "\
            "mimo proměnnou PATH, ale stále lehce dostupné."
      echo  "Syntax"
      echo  "  $1 jméno-nástroje [argumenty] (pro spuštění jméno-nástroje s parametry parametry)"
      echo  "  -- NEBO --"
      echo  "  $1 --help (pro vypsání nápovědy)"
    }
  else
    too_few_arguments="Tool needs at least one argument to run (type $0 --help for help)"
    tools_path_not_set="Warning: variable TOOLS_PATH was not set, using default (/usr/tools)"
    warning_tip="Tip: you can place 'export TOOLS_PATH=\"/path/to/tools/dir\"' into your ~/.bashrc or ~/.bash_profile to suppress this warning";

    print_help() {
      echo  "Tool is a command line utility to keep binaries outside the "\
            "PATH, but still easy accessible."
      echo  "Syntax"
      echo  "  $1 tool-name [arguments...] (to run tool-name with arguments as arguments)"
      echo  "  -- OR --"
      echo  "  $1 --help (to print this)"
    }
  fi;
else
  too_few_arguments="Tool needs at least one argument to run (type $0 --help for help)"
  tools_path_not_set="Warning: variable TOOLS_PATH was not set, using default (/usr/tools)"
  warning_tip="Tip: you can place 'export TOOLS_PATH=\"/path/to/tools/dir\"' into your ~/.bashrc or ~/.bash_profile to suppress this warning";

  print_help() {
    echo  "Tool is a command line utility to keep binaries outside the "\
          "PATH, but still easy accessible."
    echo  "Syntax"
    echo  "  $1 tool-name [arguments...] (to run tool-name with arguments as arguments)"
    echo  "  -- OR --"
    echo  "  $1 --help (to print this)"
  }
fi

# Code
if [ $# = 0 ]; then
  echo $too_few_arguments
  exit 1;
fi

if [ $1 = "--help" ]; then
  #echo  $help_info
  #echo  $help_syntax
  #echo  $help_1
  #echo  $help_separator
  #echo  $help_2
  print_help $0

  exit 0;
fi

if [ -z ${TOOLS_PATH+x} ]; then
  echo $tools_path_not_set
  echo $warning_tip
  TOOLS_PATH="/usr/tools";
fi

args=$@
args=${args/$0/""}
args=${args/$1/""}

epath=$(cat $TOOLS_PATH/.config)
"$TOOLS_PATH/tb-$epath/$1" $args
