#!/bin/bash
## Author: Nathanael Gandhi https://github.com/NathanaelGandhi/

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
    options=("aliases-distrobox" "aliases-git" "aliases-ros" "config-zsh" "config-containers" "install-apts" "install-snaps" "install-flatpaks" "Quit")
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
            "config-zsh")
                bash config-zsh.sh
                ;;
            "config-containers")
                bash config-containers.sh
                ;;
            "install-apts")
                bash install-apts.sh
                ;;
            "install-snaps")
                bash install-snaps.sh
                ;;
            "install-flatpaks")
                bash install-flatpaks.sh
                ;;
            "INSTALL-ALL")
                bash install-apts.sh
                bash install-snaps.sh
                bash install-flatpaks.sh
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

# echo "Now this is done grab some useful gnome extensions: gtile, burn my windows, vitals, nasa apod, battery time"
## COMPLETE
