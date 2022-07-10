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

# A function to shortcut g++ compiler for cpp using the options suggested from
# learncpp.com for beginners
# -pedantic-errors removes compiler plugins
# -Wall part raises the warning levels
# -std=c++2a adds language standard
gpp () {
    g++ -pedantic-errors -Wall -Weffc++ -Wextra -Wsign-conversion -std=c++2a -g $1 -o $2 
}
