#!/bin/bash

# Добавляем изменения и отправляем в репозиторий
cd "$REPO_DIR"
git config --global user.email "$GIT_USER_EMAIL"
git config --global user.name "$GIT_USER"
git remote set-url origin https://x-access-token:"$ACCESS_TOKEN"@github.com/"$GIT_NAME".git
git add -A
git commit -m "Update " || echo "No changes to commit"
git push origin main
