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
# Clear the screen
clear
# Display the menu title header
echo -e "\n\tSYSTEM INFORMATION MENU\n"
# Define the menu prompt
PS3="Select an option and press Enter: "
# The select command defines what the menu
# will look like
select i in OS Host Filesystems Date Users Quit
do
    case $i in
        OS) echo
            uname
            ;;
        Host) echo
            hostname
            ;;
        Filesystems)
            echo
            df -k | more
            ;;
        Date) echo
            date
            ;;
        Users) echo
            who
            ;;
        Quit) break
            ;;
    esac
    # Setting the select command’s REPLY variable
    # to NULL causes the menu to be redisplayed
    REPLY=

    # Pause before redisplaying the menu
    echo -e "\nPress Enter to Continue. . .\c"
    read
    # Ready to redisplay the menu again
    # clear the screen
    clear
    # Display the menu title header
    echo -e "\n\tSYSTEM INFORMATION MENU\n"
done
# Clear the screen before exiting
clear

# End of script

