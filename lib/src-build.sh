#!/bin/bash
function src-build {
  # Install NPM dependencies
  scripts/npm.sh install || npm install oniguruma@6.0.1 && scripts/npm.sh install

  # Build vscode
  node --max_old_space_size=2000 /usr/bin/gulp vscode-linux-${_vscode_arch} || printf "An error has occurred while building this package with gulp. Please report the exact error message you received\n at https://github.com/fusion809/VScode-installer/issues/new"
}

export -f src-build