#!/bin/bash


read -p"Enter the directory path: " dir

if [ -d "$dir" ]; then
    file_count=$(find "$dir" -maxdepth 1 -type f | wc -l)
    echo "Directory '$dir' contains $file_count file(s)."
else
    echo "'$dir' is not a valid directory."
fi
