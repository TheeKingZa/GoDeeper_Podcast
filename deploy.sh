#!/bin/bash

# Exit on error
set -e

# Prompt for commit message
echo "Enter commit message: "
read commit_msg

# Step 1: Commit and push changes on master
echo "📌 Adding and committing changes on master..."
git add .
git commit -m "$commit_msg" || echo "⚠️ Nothing to commit"
git push origin master

# Step 2: Update gh-pages branch with master content
echo "🚀 Deploying to gh-pages..."
git checkout gh-pages

# Pull latest gh-pages to avoid conflicts
git pull origin gh-pages

# Merge master into gh-pages
git merge master -m "Sync gh-pages with master: $commit_msg"

# Push changes to gh-pages
git push origin gh-pages

# Step 3: Switch back to master
echo "🔄 Switching back to master..."
git checkout master

echo "✅ Deployment complete!"
