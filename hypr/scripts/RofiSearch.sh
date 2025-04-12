#!/bin/bash

# Set your preferred search engine
SEARCH_ENGINE="https://www.google.com/search?q="

# Get search query from rofi
QUERY=$(rofi -dmenu -p "Web Search:")

# Exit if query is empty
[ -z "$QUERY" ] && exit

# URL encode the query
QUERY_ENCODED=$(echo "$QUERY" | sed 's/ /+/g')

# Open the search in your preferred browser
xdg-open "${SEARCH_ENGINE}${QUERY_ENCODED}"
EOF
