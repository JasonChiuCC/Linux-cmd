# Print user list
awk -F":" '{ print "username: " $1 "\t\tuid:" $3 }' /etc/passwd

#Print user on line
w
