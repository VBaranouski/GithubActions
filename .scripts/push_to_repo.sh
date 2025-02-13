#!/bin/bash

# Setup the user
git config --global user.email "github-actions[bot]"
git config --global user.name "github-actions[bot]@users.noreply.github.com"

# Setup remote repository
git remote set-url origin "https://x-access-token:$GITHUB_TOKEN@github.com/$GITHUB_REPOSITORY.git"
git remote -v

# Commit changes
git add -A
git commit -m "Automated commit" || echo "No changes to commit"

# Push to origin
git push origin main
