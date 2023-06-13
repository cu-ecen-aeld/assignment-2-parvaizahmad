#!/bin/bash

# Check for arguments
if [ $# -lt 2 ]; then
  echo "Error: Please provide the required arguments."
  exit 1
fi

writefile="$1"
writestr="$2"

# Create the directory if directory does not exist
mkdir -p "$(dirname "$writefile")"

# Write the writestr to the file
echo "$writestr" > "$writefile"

# Check if not able to create file
if [ $? -ne 0 ]; then
  echo "Error: Failed to create the file."
  exit 1
fi

echo "File created successfully at $writefile with content:"
echo "$writestr"
