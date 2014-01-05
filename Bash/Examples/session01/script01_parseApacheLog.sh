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
LOG_FILE=$1

##########################################################
#              DEFINE FUNCTIONS HERE
##########################################################

# Quick help on script usage
usage() {
    echo
    echo "Usage: $THIS_SCRIPT /path/to/log/file "
    echo
    exit 1
    }
    
##########################################################
#               BEGINNING OF MAIN
##########################################################

# Check the Provided SHP Directory
if [ "$1" = "" ] ; then
    usage
fi

if [ -e $LOG_FILE ] && [ -r $LOG_FILE ] ; then

for ip in `cat $LOG_FILE | awk '{print $1}' | sort |uniq | egrep -v -e '::1' -e '127.0.0.1'`; do 
    echo $ip ' visited the following locations:'
    VISITS=`egrep -e ^$ip $LOG_FILE | awk '{print $7}' | egrep -v '"-"'`
    echo `egrep -e ^$ip $LOG_FILE | awk '{print $7}' | egrep -v '"-"' | wc -l` ' visit recorder'    
    for v in $VISITS ; do 
        echo $v
    done

    echo -e '\n'

done

else 
    echo 'Unable to read file: ' $LOG_FILE 
    exit 1
fi


# End of script

