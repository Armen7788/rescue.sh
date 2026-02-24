#!/bin/bash

# Author: Armen Gevorgyan
# Project: Nginx Rescue Script (macOS version)

echo "== Step 1: Install nginx using Homebrew =="

# install nginx if not installed
brew install nginx


echo "== Step 2: Create pages and set permissions =="

# macOS nginx web root
WEBROOT="/opt/homebrew/var/www"

# for Intel Mac use:
# WEBROOT="/usr/local/var/www"

cd "$WEBROOT" || exit 1

for i in 1 2 3; do

  file="page$i.html"

  echo "<h1>$file</h1>" > "$file"

  chmod 644 "$file"

  # macOS nginx runs as current user
  chown $(whoami):staff "$file"

done


echo "== Step 3: Check nginx service =="

if brew services list | grep nginx | grep started >/dev/null; then

  echo "Nginx is running. Restarting..."
  brew services restart nginx

else

  echo "Nginx is not running. Starting..."
  brew services start nginx

fi


echo "== Step 4: Show last 5 nginx logs =="

LOGFILE="/opt/homebrew/var/log/nginx/error.log"

# for Intel Mac use:
# LOGFILE="/usr/local/var/log/nginx/error.log"

tail -n 5 "$LOGFILE"
