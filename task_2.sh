#!/bin/bash

# Step 1: Convert the file to lowercase for case insensitivity
cat article.txt | tr '[:upper:]' '[:lower:]' > clean_article.txt

# Step 2: Extract words containing at least one 'a' and not ending with 'i'
grep -o '\b\w*a\w*\b' clean_article.txt | grep -v 'i$' > filtered_words.txt

# Step 3: Find the three most common last two-letter combinations
echo "Three most common last two-letter combinations:"
awk '{print substr($0, length($0)-1)}' filtered_words.txt | sort | uniq -c | sort -nr | head -3

# Step 4: Count how many unique two-letter combinations there are
echo "Number of unique two-letter combinations:"
awk '{print substr($0, length($0)-1)}' filtered_words.txt | sort | uniq | wc -l

# Step 5: Find which two-letter combinations do not occur (additional challenge)
# Generate all possible two-letter combinations
echo {a..z}{a..z} | tr ' ' '\n' > all_combinations.txt

# Find the combinations that are present in the filtered words
awk '{print substr($0, length($0)-1)}' filtered_words.txt | sort | uniq > present_combinations.txt

# Find which two-letter combinations do not occur
echo "Two-letter combinations that do not occur:"
grep -v -f present_combinations.txt all_combinations.txt

