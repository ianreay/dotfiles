osascript -e "tell application \"Terminal\"" -e "tell application \"System Events\" to keystroke \"t\" using {command down}" -e "do script \"cd $PWD; echo HI\" in front window" -e "end tell" > /dev/null
