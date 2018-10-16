#!/bin/bash

clear
PS3='Please enter your choice: '
options=("du" "df" "lsblk" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "du")
            clear
            du -hc ~/
            ;;
        "df")
            clear
            df -h
            ;;
        "lsblk")
            clear
            lsblk
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
