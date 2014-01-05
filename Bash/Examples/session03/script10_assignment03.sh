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

MAX=50
guess=-1

let answer=( $RANDOM % $MAX )
let answer+=1

ceiling=$MAX
floor=0
guesses=0

##########################################################
#              DEFINE FUNCTIONS HERE
##########################################################
 

##########################################################
#               BEGINNING OF MAIN
##########################################################

while [ $guess -ne $answer ]
do
    echo “The secret number is between $floor and $ceiling.”
    echo -en “Make your guess:”
    read guess
    guesses=`expr $guesses + 1`

if [ $guess -lt $answer ]; then
    echo “$guess is too low”
    if [ $guess -gt $floor ]; then
        floor=`expr $guess + 1`
    fi
fi
if [ $guess -gt $answer ]; then
    echo “$guess is too high”
    if [ $guess -lt $ceiling ]; then
        ceiling=`expr $guess - 1`
    fi
fi
done

echo “You got it in $guesses guesses!”

# End of script

