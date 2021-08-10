#!/bin/bash
echo "Set the name for the new user"
read name
useradd $name
echo "Change password before fist login? (yes or not)" #-d
read change
if [[ "$change" = "yes" ]]
then
chage -d 0 $name
fi
echo "Set the number of days after a password has expired before the account will be disabled." #-f
read expire
useradd -f $expire $name
echo "Set the date on which the user account will be disabled." #-e
read disdate
useradd -e $disdate $name
echo "Set the period of password changing" #-M
read chper
chage -M $chper $name
echo "Set the number of days for notification of changing password before user account will be disabled" #-W
read pasnotif
chage -W $pasnotif $name
echo "User successfuly added"
