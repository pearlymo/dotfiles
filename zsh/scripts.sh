#!/bin/zsh

# Compress a directory
compress() {
    tar cvzf $1.tar.gz $1
}

# open man page in vim
vman() {
    nvim -c "SuperMan $*"

    if [ "$?" != "0" ]; then
        echo "No manual entry for $*"
    fi
}

duckduckgo() {
    lynx -vikeys -accept_all_cookies "https://lite.duckduckgo.com/lite/?q=$@"
}

wikipedia() {
    lynx -vikeys -accept_all_cookies "https://en.wikipedia.org/wiki?search=$@"
}

gacp () {
    git add $1
    git commit -m "$2"
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
