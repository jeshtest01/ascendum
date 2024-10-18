#!/bin/bash

file="/mnt/e/ubuntu/Harry.txt"

lines=$(wc -l < "$file")
words=$(wc -w < "$file")
char=$(wc -m < "$file")

echo "The number of lines:$lines"
echo "The number of words:$words"
echo "The number of characters:$char"


echo "-----------------------------------"

count=$(grep -o "Harry" "$file" | wc -l)
echo "The number of times the word Harry is coming in the file: $count"


echo "-----------------------------------"

sed 's/Harry/Harriet/g' "$file" > harry1.txt
