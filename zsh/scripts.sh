#!/bin/zsh

compress() {
    tar cvzf $1.tar.gz $1
}

gacp () {
    args=("${@}")
    git add "${args[@]: 0 : ${#args[@]} - 1}"
    git commit -m  "${args[${#arg[@]} - 1]}"
    git push
}

fd() {
  local dir
  dir=$(find ${1:-.} -type d 2> /dev/null | fzf +m) && cd "$dir"
}

fh() {
  eval $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed -E 's/ *[0-9]*\*? *//' | sed -E 's/\\/\\\\/g')
}

# A function to shortcut g++ compiler for cpp using the options suggested from
# learncpp.com for beginners
# -pedantic-errors removes compiler plugins
# -Wall part raises the warning levels
# -std=c++2a adds language standard
gpp () {
    g++ -pedantic-errors -Wall -Weffc++ -Wextra -Wsign-conversion -std=c++2a -g $1 -o $2 
}
