#!/usr/bin/env bash
set -ex

git pull
git switch main
echo $1 >> version.txt

git commit -m "bump"

git push
