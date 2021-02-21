#!/bin/sh

echo "Switching to branch master."
git checkout master

echo "Building app"
npm run build

echo "Deploying files to server"
rsync -avP build/ jj@mountainlabmaps.com:/var/www/mountainlabmaps.com/public_html
echo "Deployment complete"
