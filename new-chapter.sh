#!/bin/bash

# This script basically creates a scaffold of all the files and folders needed for a new chapter

chapter_name=$1

echo "${chapter_name}"

echo "🚧 Setting up"
echo ""
echo "=============================="
echo ""

if [ -z "$chapter_name" ]; then
    echo "❌ No Chapter name provided";
    exit 1;
else
    mkdir "$chapter_name"
    mkdir "$chapter_name/exercises"
    touch "$chapter_name/README.md"
    echo "✅ All files and Folder Created"
    echo ""
    echo "==============================="
    echo ""
    echo "- [ ] $chapter_name" >> "README.md"
    echo "README Updated ✅"
fi