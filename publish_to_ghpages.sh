
#!/bin/sh

if [[ $(git status -s) ]]
then
    echo "The working directory is dirty. Please commit any pending changes."
    exit 1;
fi

echo "Deleting old publication"
rm -rf public
git worktree prune

echo "Checking out gh-pages branch into public"
git worktree add -B gh-pages public gh/gh-pages

echo "Removing existing files"
rm -rf public/*

echo "Generating site"
cd themes/foundation6/scripts
npm run build:hugo-prod
cd ../../../

echo "Updating gh-pages branch"
cd public && git add --all && git commit -m "Publishing to gh-pages (publish.sh)" && git push gh gh-pages