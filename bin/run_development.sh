#!/usr/bin/env bash

for pkg in $(ls packages/node_modules); do
  if [ ! -d "packages/node_modules/$pkg" ]; then
    continue
  fi
  cd packages/node_modules/$pkg
  echo "Yarn install node_modules $pkg..."
  pm2 start process_development.json
  cd -
done
