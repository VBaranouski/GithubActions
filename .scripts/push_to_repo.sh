#!/bin/bash


# Добавляем изменения и отправляем в репозиторий
cd "$REPO_DIR"
echo "Добавляем и отправляем изменения в репозиторий..."
git add "$HTML_FILE"
git commit -m "Homepage" && git push origin main
echo "Добавляем и отправляем изменения в репозиторий..."
git config --global user.email "$GIT_USER_EMAIL"
git config --global user.name "$GIT_USER"
git add -A
git commit -m "Update " || echo "No changes to commit"
git push
