#!/bin/bash

# Check if the user provided a PC value
if [ $# -ne 1 ]; then
  echo "Usage: $0 <PC_value>"
  exit 1
fi

# Store the input PC value
PC_VALUE=$1

# Search for the instruction in the file
result=$(grep "^${PC_VALUE}," core.txt)

# Check if the result is empty (no matching PC value)
if [ -z "$result" ]; then
  echo "Instruction not present in file"
else
  # Extract the full assembly instruction if the PC value is found
  echo "$result" | awk -F',' '{match($0, /"([^"]+)"/, arr); print arr[1]}'
fi
