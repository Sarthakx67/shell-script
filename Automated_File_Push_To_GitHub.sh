#!/bin/bash

set -x

CODE_FOLDER="/home/sarthak/myCodes"
COMMIT_MESSAGE="Automated Daily Codes Backup"

if [[ ! -d "$CODE_FOLDER" ]]; then
    echo "Error: Folder '$CODE_FOLDER' does not exist."
    exit 1  # Exit the script if the folder doesn't exist
fi

cd "$CODE_FOLDER" || { echo "Error: Failed to change directory to '$CODE_FOLDER'."; exit 1; }

if [[ ! -d ".git" ]]; then
    git init
    git remote add origin "URL"
fi

git add .
if ! git commit -m "$COMMIT_MESSAGE"; then
    echo "Error: Git commit failed."
    exit 1
fi

git push -u origin master
