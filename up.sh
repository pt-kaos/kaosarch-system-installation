#!/bin/bash
set -eo pipefail
##################################################################################################################
# Author    : Pedro Teodoro
# Github    : https://github.com/pt-kaos
##################################################################################################################
#set -e

workdir=$(pwd)

# Below command will backup everything inside the project folder
git add --all .

# Committing to the local repository with a message containing the time details and commit text
git commit -m "update"

# Push the local files to github
git push -u origin main

echo
tput setaf 6
echo "##############################################################"
echo "###################  $(basename $0) done"
echo "##############################################################"
tput sgr0
echo
