#!/bin/bash
# Exit immediately if a command exits with a non-zero status
set -e

# Ensure we are on master branch
git checkout master

# Pull the latest changes from remote master
git pull origin master

# Add all changes
git add .

# Commit changes with message
echo "Enter commit message: "
read commit_message
git commit -m "$commit_message"

# Push changes to master branch
git push origin master

# Push the same changes to gh-pages branch (keeping it in sync with master)
git push origin master:gh-pages

echo "✅ Deployment complete! Master and gh-pages are in sync."
