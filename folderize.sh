#!/bin/bash

# For loop checks for a max of 1024 files, can edit range if desired.

# "mkdir -p" creates a directory with just a number according to index i
# "mv" moves all files matching the search pattern into the folder that was created 

for i in {1..1024}; do
    if ls *."$i".wav 1> /dev/null 2>&1; then
        echo "$i".wav exists, creating folder...
	mkdir -p "$i" && mv *."$i".wav "$i"
    else
        echo No more sequentially-numbered files since "$i".wav does not exist
	echo folderize.sh is done!
        break;
    fi
done

rm folderize.sh