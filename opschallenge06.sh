#!/bin/bash

# script name: opschallenge06
# author: elodie
# date of latest revision: 07-18-2023
# purpose: the objective of this script is to 
            # (1) detect if a file or directory exists
            # (2) create it if it does not exist
            # (3) must use at least one array, one loop, and one conditional

#main
arr=(dir0 dir1 dir2 dir3)

echo "Welcome to Checkmate, a program designed to check whether a file or directory exists."
echo "Please specify whether you will be entering the name of a file or directory. (Type "file" or "directory")"
read fileordirectory

if [ $fileordirectory = "file" ]; then
    echo "Please specify the absolute path for the file in question." 
    read filename
    if [ -e $filename ]; then
        echo "File exists. Cheerio."
    else
        echo "File does not exist. Checkmate will now create the file you seek."
        touch $filename
        echo "The file has successfully been created. Cheerio."
    fi
elif [ $fileordirectory = "directory" ]; then
    echo "What is the name of the directory you wish to check?"
    read dirname
    if [ -e $dirname ]; then
        for i in ${arr[@]}
            do 
                if [ $i == $dirname ]; then
                    echo "Directory exists and it already has a file in it. Cheerio."
                    break
                fi
            done
        echo "Directory exists. Cheerio."
    else
        echo "Directory does not exist. Checkmate will now create the directory you seek."
        mkdir $dirname
        echo "The directory has successfully been created. Cheerio."
    fi
fi

# end