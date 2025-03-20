#!/bin/bash

# Define colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

mkdir -p downloads
BASE_URL="https://www.archives.gov"

curl -s "https://www.archives.gov/research/jfk/release-2025" | \
grep -o 'href="[^"]*\.pdf"' | \
cut -d'"' -f2 | \
while read -r pdf_link; do
    if [[ $pdf_link == /* ]]; then
        full_url="${BASE_URL}${pdf_link}"
    else
        full_url="${pdf_link}"
    fi
    
    filename=$(basename "$pdf_link")
    
    echo -e "${YELLOW}Downloading: $filename${NC}"
    curl -# -L "$full_url" -o "downloads/$filename"
    
    echo -e "${GREEN} Done${NC}"
done

echo -e "${GREEN}Download complete! Files are in the downloads directory.${NC}"
