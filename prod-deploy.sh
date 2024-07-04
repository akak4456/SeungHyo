#!/bin/bash

if [ -z $1 ] 
then
    echo "You need to input version like v0.0.1"
else
    git commit --allow-empty -m "[CNG] prod deploy and version up to $1"
    git push
    git tag $1
    git push origin $1
fi