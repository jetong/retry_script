#!/bin/bash

#set -e
count=0;

echo "Start of script"
./random.sh
code=$?

# if fail, add 1 to counter and try again
while [ $code -ne 0 ] && [ $count -lt 3 ]
do
	echo "Retry $count"
	./random.sh
	code=$?
	count=$((count+1))
done

if [ $count -eq 3 ]; then
	echo "Exiting after 3 attempts"
fi	

echo "End of script"
