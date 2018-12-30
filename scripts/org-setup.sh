#!/bin/bash
if [ $# -eq 0 ]
  then
    echo "Please supply a scratch org alias"
    exit 1
fi

echo "Creating scratch org with alias $1..."
sfdx force:org:create -f ../config/project-scratch-def.json -s -a "$1"
echo "Pushing local source to scratch org..."
sfdx force:source:push
echo "Assigning permission set to user..."
sfdx force:user:permset:assign -n Resume_Permissions
