#!/bin/bash

PATH_TO_FILE="$(cd `dirname $0` && pwd)";
export		RED="[0;31m"
export		GREEN="[0;32m"
export		DEFAULT="[0;39m"

# OpenCode
if which opencode >/dev/null; then
  echo "Open code installed"
else
  echo "${RED}Attention: ${DEFAULT} OpenCode not found"
  echo "Installing config files anyway in case you use docker to run opencode"
fi
mkdir -p ~/.config
rm -rf ~/.config/opencode
ln -s ${PATH_TO_FILE}/ ~/.config/opencode
