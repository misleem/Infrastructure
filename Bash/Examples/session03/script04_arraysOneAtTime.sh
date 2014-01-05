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


numberArray[0]=10
numberArray[1]=55
numberArray[2]=91
numberArray[3]=10.1
numberArray[4]=30
numberArray[5]=14.6


unset numberArray[4]

echo ${numberArray[0]}
echo ${numberArray[1]}
echo ${numberArray[2]}
echo ${numberArray[3]}
echo ${numberArray[4]}
echo ${numberArray[5]}
echo ${numberArray[6]}

serverList[0]=WebServer 
serverList[1]="App server" 
serverList[2]=Data\ server 

echo ${serverList[@]}
echo ${#serverList[@]}

# End of script

