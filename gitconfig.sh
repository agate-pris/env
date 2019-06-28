#!/bin/bash
git config --global core.editor 'code -nw'
git config --global difftool.code.cmd 'code -dnw "$LOCAL" "$REMOTE"'
git config --global diff.guitool 'code'
git config --global mergetool.code.cmd 'code -nw "$MERGED"'
git config --global mergetool.code.trustExitCode false
git config --global merge.guitool 'code'
echo "*** Please tell me who you are.

Run

  git config --global user.email \"you@users.noreply.github.com\"
  git config --global user.name \"Your Name\"

to set your account's default identity.
Omit --global to set the identity only in this repository."
