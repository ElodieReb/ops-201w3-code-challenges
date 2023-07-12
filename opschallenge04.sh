#!/bin/bash

# script name: opschallenge04
# author: elodie
# date of latest revision: 07-11-2023
# purpose: the objective of this script is to 
            # (1) create four directories
            # (2) load each directory path into an array
            # (3) create a new .txt file within each directory
            # by referencing the directory with array indices

# (1)
mkdir dir0 dir1 dir2 dir3

# (2)
arr=("./dir0" "./dir1" "./dir2" "./dir3")

# (3)
touch "${arr[0]}/file.txt"
touch "${arr[1]}/file.txt"
touch "${arr[2]}/file.txt"
touch "${arr[3]}/file.txt"


# end