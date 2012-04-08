#!/bin/sh

# Install npm
curl http://npmjs.org/install.sh | sh

# Instsall global node modules
npm install -g express
npm install -g markdown-wiki
npm install -g deja
npm install -g pegjs
npm install -g codestream