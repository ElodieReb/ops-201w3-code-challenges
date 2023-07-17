#!/bin/bash

# script name: opschallenge05
# author: elodie
# date of latest revision: 07-17-2023
# purpose: the objective of this script is to 
            # (1) display running processes
            # (2) ask the user for a PID
            # (3) kill the process with that PID
            # (4) start over at step 1 and continue until user exits with Ctrl + C

#main
while true
do
echo Above are the processes currently running in the shell:
display_running_processes () {
    ps
}
display_running_processes

echo To kill a process, please enter its corresponding PID.
prompt_user_PID () {
    read PID
}
prompt_user_PID

execute_kill () {
    kill -15 $PID
}
execute_kill

echo Process killed. Goodbye.
done


# end