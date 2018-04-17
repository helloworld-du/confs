#!/bin/sh
source ./func.sh
conf_git_path=~/github/



install_brew
install_cmd_by_brew "bash-completion"
install_cmd_by_brew "wget"
install_cmd_by_brew "curl"
install_cmd_by_brew "yum"

install_cmd_by_brew "git-lfs"
git lfs install
