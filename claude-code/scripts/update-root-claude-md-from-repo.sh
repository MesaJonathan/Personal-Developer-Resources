#!/bin/bash
# Copies the contents of ../CLAUDE.md to Users/.../.claude/CLAUDE.md

# Get the directory of this script
SCRIPT_DIR=$(dirname "$0")

# Directories of each of the files
ROOT_MD_PATH=~/.claude/CLAUDE.md
REPO_MD_PATH="$SCRIPT_DIR/../CLAUDE.md"

# Capture diff before copy
DIFF=$(diff -u "$ROOT_MD_PATH" "$REPO_MD_PATH")

# Copy repo file into root file
cp "$REPO_MD_PATH" "$ROOT_MD_PATH"

echo
echo "Updated $ROOT_MD_PATH from $REPO_MD_PATH"
echo
echo "Updates: $DIFF"