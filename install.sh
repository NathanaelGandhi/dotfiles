#!/bin/bash
# Author: Nathanael Gandhi

pickShell () {
    PS3='Pick your shell: '
    options=("bash" "zsh" "Quit")
    select opt in "${options[@]}"
    do
        case $opt in
            "bash")
                pickFiles $opt
                break
                ;;
            "zsh")
                pickFiles $opt
                break
                ;;
            "Quit")
                break
                ;;
            *) echo "invalid option $REPLY";;
        esac
    done
}

pickFiles () {
    config_file=".${1}rc"  # create config file name based on selected shell
    PS3='Please enter your choice: '
    options=("aliases-distrobox" "aliases-git" "aliases-ros" "Quit")
    select opt in "${options[@]}"
    do
        case $opt in
            "aliases-distrobox")
                checkAndAction $opt $config_file
                ;;
            "aliases-git")
                checkAndAction $opt $config_file
                ;;
            "aliases-ros")
                checkAndAction $opt $config_file
                ;;
            "Quit")
                break
                ;;
            *) echo "invalid option $REPLY";;
        esac
    done
}

checkAndAction() {
    if grep -q "source '$(pwd)/${1}" ~/${2}; then
        echo "${1} exists"
    else
        echo "source '$(pwd)/${1}'" >> ~/${2}
        echo "${1} added to ~/${2}"
    fi
}

pickShell
