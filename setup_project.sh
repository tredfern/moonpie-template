#/bin/bash

rm -rf .git
rm -rf ext/moonpie

git init .
git submodule init
git submodule add https://github.com/tredfern/moonpie.git ext/moonpie
git add --all
git commit -m "Initial Commit"