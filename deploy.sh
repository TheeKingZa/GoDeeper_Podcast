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
git commit -m "$commit_message" || echo "No changes to commit."

# Push changes to master branch
git push origin master

# Force push master to gh-pages (keeping them identical)
git push origin master:gh-pages --force

echo "✅ Deployment complete! Master and gh-pages are now identical."
