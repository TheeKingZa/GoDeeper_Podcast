#!/bin/bash

# Set the name of your GitHub Pages branch
pages_branch="gh-pages"

# Check if git is installed
if ! command -v git &> /dev/null; then
  echo "Error: Git is not installed. Please install Git before proceeding."
  exit 1
fi

# Check if the gh-pages branch exists. If not, create it.
if ! git branch -l | grep -q "$pages_branch"; then
  echo "Creating gh-pages branch..."
  git checkout --orphan $pages_branch
  git rm -rf .
  git commit -m "Initial commit for gh-pages"
  git push --set-upstream origin $pages_branch
  echo "Successfully created gh-pages branch."
else
  echo "gh-pages branch already exists. Proceeding with deployment..."
fi

# Build your website (replace with your actual build command)
echo "Building website..."
# Add your build command here if needed

# Check for changes
if [[ -n $(git status -s) ]]; then
  # Prompt for a commit message
  read -p "Enter commit message: " commit_message

  # Add and commit changes
  git add .
  git commit -m "$commit_message"

  # Push to gh-pages branch
  git checkout $pages_branch
  git push origin $pages_branch

  # Check if the push was successful
  if [ $? -ne 0 ]; then
    echo "Error: Push to gh-pages branch failed."
    exit 1
  fi

  echo "Successfully deployed to GitHub Pages!"
else
  echo "No changes to deploy."
fi

# Return to master branch
git checkout master
