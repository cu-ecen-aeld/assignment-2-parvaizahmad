#!/bin/bash

# Check if both arguments are provided
if [ $# -lt 2 ]; then
  echo "Error: Please provide the required arguments."
  exit 1
fi

filesdir="$1"
searchstr="$2"

# Check if filesdir exists and it is a valid directory
if [ ! -d "$filesdir" ]; then
  echo "Error: $filesdir is not a directory."
  exit 1
fi

# Find the number of files and matching lines
f_cnt=$(find "$filesdir" -type f | wc -l)
line_matches=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $f_cnt and the number of matching lines are $line_matches."
