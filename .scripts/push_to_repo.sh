#!/bin/bash

WORK_DIR="/tmp/Repo"
REPO_DIR="$WORK_DIR/"
$GIT_USER_EMAIL="mail@mail.tr"
$GIT_USER="vbars"

# Добавляем изменения и отправляем в репозиторий
cd "$REPO_DIR"
git config --global user.email "$GIT_USER_EMAIL"
git config --global user.name "$GIT_USER"
git add -A
git commit -m "Update " || echo "No changes to commit"
git push
