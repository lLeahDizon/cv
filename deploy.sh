#!/usr/bin/env bash
rm -rf dist/
parcel build src/index.html --public-url . &&
cd dist
git init
git add .
git commit -m 'init' &&
git remote add origin git@github.com:lLeahDizon/cv-website.git &&
git branch -M main &&
git push -u origin main -f &&
cd -
