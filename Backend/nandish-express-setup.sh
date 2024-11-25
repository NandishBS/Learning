#!/bin/bash

git remote add starter https://github.com/NandishBS/express-starter-template.git
git pull starter main --allow-unrelated-histories --no-edit
git remote remove starter
npm init -y
sed -i '/"main":/a\  "type": "module",' package.json
sed -i '/"scripts": {/a\    "dev": "nodemon src/index.js",' package.json
npm install -D prettier nodemon
npm install express dotenv mongoose
git add .
git commit -m 'express setup completed'
