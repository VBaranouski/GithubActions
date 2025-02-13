#!/bin/bash

# Добавляем изменения и отправляем в репозиторий
cd "$REPO_DIR"
git config --global user.email "$GIT_USER_EMAIL"
git config --global user.name "$GIT_USER"
git add -A
git commit -m "Update " || echo "No changes to commit"
git push git@github.com:${{ github.repository }}.git main
