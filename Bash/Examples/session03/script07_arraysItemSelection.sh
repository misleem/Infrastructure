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

food=( apple banana cucumber pear egg peach grape )


printf "Food: %s\n" "${food[@]}"

echo ${food[@]:0:1}  " ==> :0:1"

echo ${food[@]:1:1} " ==> :1:1"

echo ${food[@]:2:1} " ==> :2:1"

echo ${food[@]:7:1} " ==> :7:1"

echo ${food[@]:2:4} " ==> :2:4"

echo ${food[@]:0:3} " ==> :0:3"

echo ${food[@]:3} " ==> :3"

echo ${food[@]:1} " ==> :1"

echo ${food[@]:6} " ==> :6"

echo ${food[@]::1} " ==> ::1"


# End of script

