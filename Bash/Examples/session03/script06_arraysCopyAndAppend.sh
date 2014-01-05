#!/bin/bash
#
# SCRIPT: NAME_of_SCRIPT
# AUTHOR: AUTHORS_NAME
# DATE:   DATE_of_CREATION
# REV:    1.1.A (Valid are A, B, D, T, Q, and P)
#               (For Alpha, Beta, Dev, Test, QA, and Production)
#
# REQUIREMENTS: If this script has requirements that need to be noted, this
#               is the place to spell those requirements in detail. 
#
#         EXAMPLE:  OpenSSH is required for this shell script to work.
#
# PURPOSE: Give a clear, and if necessary, long, description of the
#          purpose of the shell script. This will also help you stay
#          focused on the task at hand.
#
# REV LIST:
#        DATE: DATE_of_REVISION
#        BY:   AUTHOR_of_MODIFICATION
#        MODIFICATION: Describe what was modified, new features, etc--
#
#
# set -n   # Uncomment to check script syntax, without execution.
#          # NOTE: Do not forget to put the # comment back in or
#          #       the shell script will never execute!
# set -x   # Uncomment to debug this shell script
#
##########################################################
#         DEFINE FILES AND VARIABLES HERE
##########################################################

THIS_SCRIPT=$(basename $0)

##########################################################
#              DEFINE FUNCTIONS HERE
##########################################################
 

##########################################################
#               BEGINNING OF MAIN
##########################################################

WorkerList=( worker0 worker1 worker2 worker3 worker4 )

echo  "WorkerList has the following items:" "${WorkerList[@]}"

echo ${WorkerList}
echo ${#WorkerList}

echo ${WorkerList[2]}
echo ${#WorkerList[2]}

echo ${WorkerList[@]}
echo ${#WorkerList[@]}


# Copy an array

workers=( PCORE "${WorkerList[@]}" PHR )

for index in $(seq 0 $(( ${#workers[@]} - 1 )))
do
    echo "Worker $index is ${workers[$index]}."
done

echo "End of first for loop"


echo "Now again with the fifth worker..."

workers[5]=Operations

for index in $(seq 0 $(( ${#workers[@]} - 1 )))

do
    echo "Worker $index is ${workers[$index]}."
done

echo "Missed it; Worker 5 is ${workers[5]}."


# End of script

