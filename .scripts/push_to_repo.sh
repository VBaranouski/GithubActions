#!/bin/bash

# Добавляем изменения и отправляем в репозиторий
cd "${{ env.REPO_DIR }}"
git config --global user.email "${{ env.GIT_USER_EMAIL }}"
git config --global user.name "${{ env.GIT_USER }}"
git add -A
git commit -m "Update " || echo "No changes to commit"
git push
