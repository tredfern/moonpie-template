#/bin/bash

git clone https://github.com/tredfern/moonpie-template.git $1
cd $1
rm -r .git
git init .