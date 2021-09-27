#!/usr/bin/env bash
set -ex

git pull
git switch main
echo $1 >> version.txt
git config --global user.email "goat@fusebit.io"
git config --global user.name "The GOAT"
git add -A
git commit -m "bump"

git push
