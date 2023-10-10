#!/bin/bash

for arg in "$@"; do
    if [ -e "$arg" ]; then      
        if [ -d "$arg" ]; then
            echo "$arg is a directory."
        elif [ -f "$arg" ]; then
            echo "$arg is a file."
        else
            echo "$arg exists but is neither a file nor a directory."
        fi
    else
        echo "$arg does not exist."
    fi
done

