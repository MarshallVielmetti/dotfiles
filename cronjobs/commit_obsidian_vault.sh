#!/bin/bash

cd ~/Documents/obsidian/valut/

git add .
git commit -m "CRONJOB: $(date '+%Y-%m-%d')"
git push
