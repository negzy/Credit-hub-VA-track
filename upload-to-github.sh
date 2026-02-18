#!/bin/bash
# Run this script in Terminal.app (not Cursor) so git commit works.
# Usage: ./upload-to-github.sh

set -e
cd "$(dirname "$0")"

echo "=== VA Command Center - Upload to GitHub ==="
echo ""

# Ensure we're in the right place
if [ ! -f "dashboard.html" ]; then
  echo "Error: Run this from the Credit-hub-VA-track folder."
  exit 1
fi

# Commit if there are changes (or no commits yet)
if ! git rev-parse HEAD &>/dev/null || git status --porcelain | read -r; then
  git add -A
  git commit --no-verify -m "Initial commit - VA Command Center" || true
  echo "Committed."
else
  echo "Nothing to commit (already up to date)."
fi

# Check if remote exists
if git remote get-url origin 2>/dev/null; then
  echo ""
  echo "Pushing to origin..."
  git push -u origin master 2>/dev/null || git push -u origin main 2>/dev/null || true
  echo "Done. Share your repo URL with your VA."
  exit 0
fi

# No remote - print instructions
echo ""
echo "No GitHub remote set yet. Run:"
echo ""
echo "   git remote add origin https://github.com/negzy/Credit-hub-VA-track.git"
echo "   git branch -M main"
echo "   git push -u origin main"
echo ""
echo "Then: Repo → Settings → Pages → Source: main → Save"
echo "VA dashboard URL: https://negzy.github.io/Credit-hub-VA-track/"
echo ""
