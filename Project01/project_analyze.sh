#!/bin/sh

echo "Select a feature between 2 and 7"

read choice

if [ "$choice"="2" ];
then

	if [ -f ~/CS1XA3/Project01/todo.log ];
	then
		> todo.log
		lines=$(grep -Rn '#TODO' /home/kabugov/CS1XA3)
		echo "$lines" > "todo.log"
	else
		touch todo.log
		lines=$(grep -Rn '#TODO' /home/kabugov/CS1XA3)
		echo "$lines" > "todo.log"
	fi
fi
