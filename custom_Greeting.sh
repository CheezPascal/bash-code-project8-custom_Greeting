#!/bin/bash

# Read quotes from file
mapfile -t quotes < quotes.txt

# Choose a random quote
random_quote=${quotes[$RANDOM % ${#quotes[@]}]}

echo "Hello, $(whoami)! Today is $(date '+%A, %B %d, %Y')."
echo "Motivational Quote: $random_quote"