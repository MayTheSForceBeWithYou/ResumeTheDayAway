#!/bin/bash
if [ $# -eq 0 ]; then
	>&2 echo "No scratch org alias provided"
    exit 1
fi

if [ ! -f ../config/project-scratch-def.json ]; then
	if [ ! -f config/project-scratch-def.json ]; then
		echo "Please try running this from the /scripts folder or the project root."
		>&2 echo "config/project-scratch-def.json not found"
		exit 1
	else
		echo "Creating scratch org with alias $1..."
		orgCreation=`sfdx force:org:create -f config/project-scratch-def.json -s -a "$1"`
	fi
else
	echo "Creating scratch org with alias $1..."
	orgCreation=`sfdx force:org:create -f ../config/project-scratch-def.json -s -a "$1"`
fi
#if [[ "$orgCreation" =~ ^ERROR.* ]]; then
#	echo $orgCreation
#	exit 1
#else
#	echo "$orgCreation" =~ &ERROR.*
#fi
echo "Pushing local source to scratch org..."
sfdx force:source:push
echo "Assigning permission set to user..."
sfdx force:user:permset:assign -n Resume_Permissions
