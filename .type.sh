#!/bin/bash
#type writer
typewriter_effect() {
    text=$1
    delay=$2

    for (( i=0; i<${#text}; i++ )); do
        echo -n -e "${green}${text:$i:1}${yellow}"
        sleep $delay
    done
    echo
}

# Usage:
