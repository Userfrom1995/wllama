#!/bin/bash
set -e

echo "Pulling latest llama.cpp upstream changes..."
cd llama.cpp
git fetch origin
git checkout master
git pull origin master
cd ..

echo "Staging llama.cpp submodule update..."
git add llama.cpp

echo "Committing..."
git commit -m "Update llama.cpp submodule to latest master"

echo "Done! The latest llama.cpp has been pulled and committed."
echo "You can now run ./scripts/build_wasm.sh to build it, or let your GitHub Actions handle it."
