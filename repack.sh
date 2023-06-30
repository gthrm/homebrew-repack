#!/bin/bash
set -e

CURRENT_COMMAND="yarn"

while getopts ":ny" opt_char; do
    case $opt_char in
    n)
        CURRENT_COMMAND="npm"
        ;;
    y) ;;
    \?)
        echo "Invalid option: -$OPTARG" >&2
        exit 1
        ;;
    esac
done

spinner() {
    local pid=$1
    local delay=0.1
    local spinstr='|/-\'
    tput civis
    trap 'printf "\n"; tput cnorm; exit' SIGINT
    while [ "$(ps a | awk '{print $1}' | grep $pid)" ]; do
        local temp=${spinstr#?}
        printf "\r [%c]  " "$spinstr"
        local spinstr=$temp${spinstr%"$temp"}
        sleep $delay
    done
    printf "\r    \b\b\b\b"
    tput cnorm
}

while true; do
    read -p "Repack node_modules? (yes/no) " yn
    case $yn in
    [Yy]*)
        echo "Repacking with $CURRENT_COMMAND..."
        (rm -rf node_modules) & spinner $!
        $CURRENT_COMMAND install && $CURRENT_COMMAND start
        return
        ;;
    [Nn]*)
        exit
        ;;
    *)
        echo "Please answer yes or no."
        ;;
    esac
done

