#!/bin/bash

pip install pygit2 flask
git clone https://github.com/aspiers/git-deps.git
cd git-deps/
python setup.py install
cd /usr/local/lib/python3*/site-packages/git_deps/html
mkdir ~/.ssh
ssh-keyscan -H github.com >> ~/.ssh/known_hosts
npm install
node_modules/.bin/browserify -t coffeeify -d js/git-deps-graph.coffee -o js/bundle.js
