#!/bin/bash

# script name: opschallenge07
# author: elodie
# date of latest revision: 07-19-2023
# purpose: the objective of this script is to 
            # (1) use `lshw` to display system information to the screen
            # about the CPU, RAM, display adapter, and network adapter
            # (2) use `grep` to remove irrelevant information

#main
# `sudo lshw` prompts for system info

# I think I could do this a couple of ways
# (1) manually grep all of the info I don't want
# (2) create separate functions that grep certain things;
#      in this case, I could use either an array or possibly
#      a for loop to iterate through

# just kidding, there's already an `lshw` command that allows me to
# separate out some of the information
# `sudo lshw -c [class]`
# now to determine what the different classes are - then we're in business

get_computername () {
    sudo lshw -c system | grep "description"
}

get_CPUinfo () {
    sudo lshw -c CPU | grep "product"
    sudo lshw -c CPU | grep "vendor"
    sudo lshw -c CPU | grep "physical"
    sudo lshw -c CPU | grep "bus"
    sudo lshw -c CPU | grep "width"
}

get_RAMinfo () { # this function is obviously my least favorite
                # I couldn't figure out how to selectively grep 
                # the info I wanted :( below is what I came up with
    sudo lshw -c memory | egrep "system|memory"
    sudo lshw -c memory | grep " 1$"
    sudo lshw -c memory | grep "1GiB"
}

get_displayinfo () {
    sudo lshw -c display
}

get_networkinfo () {
    sudo lshw -c network
}

get_computername
echo "Above is the information regarding the name of your computer^"
get_CPUinfo
echo "Above is the information regarding the CPU^"
get_RAMinfo
echo "Above is the information regarding the RAM^"
get_displayinfo
echo "Above is the information regarding the display adapter^"
get_networkinfo
echo "Above is the information regarding the network adapter^"

echo "That is all the information you requested. Cheerio."

# end