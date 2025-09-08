#!/bin/bash

echo -e "\nCheck if the root user is logged"

if [ $UID -eq 0 ]; then
	echo "You are the root user"
else 
	echo "You arent root user"
fi
