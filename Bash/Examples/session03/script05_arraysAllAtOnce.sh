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


CATALINA_HOME=/opt/tomcat
WORKER_ROOT=/opt/robust
WORKER_LIST=( worker5 worker6 worker7 worker8 worker9 )
WORKER_PORT=( 8005 8105 8205 8305 8405 )
WORKER_AJP_PORT=( 8009 8109 8209 8309 8409 )

echo ${WORKER_LIST[@]}
echo ${WORKER_PORT[@]}
echo ${WORKER_AJP_PORT[@]}

unset WORKER_LIST[2]

if [ ${#WORKER_LIST[@]} -eq ${#WORKER_PORT[@]} ] && [ ${#WORKER_LIST[@]} -eq ${#WORKER_AJP_PORT[@]} ] ; then

    echo "Arrays have same size!"
else

    echo "Arrays differ in size!!"
fi

echo ${WORKER_LIST[@]}

openPorts=( `sudo netstat -vatnp | egrep  LISTEN | egrep -v  '::' | awk '{print $4}' | awk -F: '{print $2}' | sort -n` )

#Associative Arrays

appsPorts=( [22]=ssh [25]=smtp [10000]=webmin )

for port in ${openPorts[@]} 
do 
    
if [ -n "${appsPorts[$port]}" ] ; then
    echo "Port number $port used by ${appsPorts[$port]} "

elif [ $port -gt 1024 ] ; then
    echo "Port number $port is greater than 1024"

else
    echo "Port number $port is unrecgnized"
fi


done


# End of script

