#!/bin/bash

# Open repository dir
#cd "$REPO_DIR"

# Setup the user
git config --global user.email "$GIT_USER_EMAIL"
git config --global user.name "$GIT_USER"

# Setup remote repository
git remote set-url origin "https://x-access-token:$GITHUB_TOKEN@github.com/$GITHUB_REPOSITORY.git"

# Commit changes
git add -A
git commit -m "Automated commit" || echo "No changes to commit"

# Push to origin
git push origin main
