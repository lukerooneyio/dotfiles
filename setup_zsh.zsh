#!/usr/bin/env zsh
# Installation unnecessary; it's in the Brewfile.

 echo "Enter superuser (sudo) password to edit /etc/shells"
 echo '/usr/local/bin/zsh' | sudo tee -a '/etc/shells' >/dev/null
 # https://stackoverflow.com/a/4749368/1341838
 if grep -Fxq '/usr/local/bin/zsh' '/etc/shells'; then
   echo '/usr/local/bin/zsh already exists in /etc/shells'
 else
   # echo "Enter superuser (sudo) password to edit /etc/shells"
   echo '/usr/local/bin/zsh' | sudo tee -a '/etc/shells' >/dev/null
 fi

 echo "Enter user password to change login shell"
 chsh -s '/usr/local/bin/zsh' 

 if [ "$SHELL" = '/usr/local/bin/zsh' ]; then
   echo '$SHELL is already /usr/local/bin/zsh'
 else
   echo "Enter user password to change login shell"
   chsh -s '/usr/local/bin/zsh'
 fi