#!/bin/bash

# user
git config --global user.email "marianocucufate@gmail.com"
git config --global user.name "Manuel García García"

# tools
git config --global core.editor vim
git config --global merge.tool meld

mkdir -p ~/private_git
cd ~/private_git

for root in "users/manologg" "orgs/thunder-guanaco" "orgs/saperia-core"
do
    curl -s "https://api.github.com/${root}/repos?per_page=100" | jq '.[].ssh_url' | xargs -I{} git clone {}
done


git clone git@github.com:saperia-core/reply-code-challenge-2021.git
git clone git@github.com:saperia-core/mekami.git

