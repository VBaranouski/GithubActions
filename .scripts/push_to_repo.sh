#!/bin/bash

# Commit & push to REPO
cd "$REPO_DIR"
git config --global user.email "$secrets.GIT_USER_EMAIL"
git config --global user.name "$secrets.GIT_USER"
git remote set-url origin https://x-access-token:"$secrets.GITHUB_TOKEN"@github.com/"$github.repository".git
git add -A
git commit -m "Update " || echo "No changes to commit"
git push origin main
