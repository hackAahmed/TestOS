#!/bin/bash

while getopts "s:" opt; do
    case ${opt} in
        s )
            IP=$OPTARG
            TTL=$(ping -c 1 -W 1 $IP | grep -oP 'ttl=\K[0-9]+')
            if [ -z "$TTL" ]; then
                echo -e "\e[33mPossible OS Windows\e[0m"  # Texte jaune pour indiquer un possible OS Windows
             
            elif [ "$TTL" -eq 128 ]; then
                echo -e "\e[32mOS Windows\e[0m"  # Texte vert pour Windows
            elif [ "$TTL" -eq 64 ]; then
                echo -e "\e[34mOS Linux\e[0m"   # Texte bleu pour Linux
            else
                echo -e "\e[31mTTL inconnu : $TTL\e[0m"  # Texte rouge pour TTL inconnu
            fi
            ;;
        \? )
            echo "Usage: $0 -s <IP_ADDRESS>"
            ;;
    esac
done
