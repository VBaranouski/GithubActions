#!/bin/bash

# Commit & push to REPO
cd "$REPO_DIR"
git config --global user.email "$GIT_USER_EMAIL"
git config --global user.name "$GIT_USER"
git remote set-url origin https://x-access-token:"$GITHUB_TOKEN"@github.com/"$GIT_NAME".git
git add -A
git commit -m "Update " || echo "No changes to commit"
git push origin main
