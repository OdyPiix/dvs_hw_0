#!/bin/bash

echo "OS version:"
cat /etc/*release | grep PRETTY_NAME | cut -d "=" -f 2

echo
echo "Bash shell users:"
grep '/bin/bash' /etc/passwd | cut -d ':' -f 1

echo
echo "Open ports:"
sudo netstat -tuln