#!/bin/bash

# Author: Armen Gevorgyan
# Project: Nginx Rescue Script
# Description: Script to install, fix permissions, and restore nginx service
# Date: 24.02.2026


set -euo pipefail

if [ "$(id -u)" -ne 0 ]; then
  echo "ERROR: Run as root (example: sudo ./rescue.sh)"
  exit 1
fi

echo "== Step 1: apt update + install nginx =="
apt update
apt install -y nginx

echo "== Step 2: create pages + chmod 644 + chown www-data:www-data =="
cd /var/www/html/

for i in 1 2 3; do
  file="page${i}.html"
  echo "<h1>Hello from ${file}</h1>" > "$file"
  chmod 644 "$file"
  chown www-data:www-data "$file"
done

echo "== Step 3: check nginx status and restart/start =="
if systemctl is-active --quiet nginx; then
  echo "Nginx is running. Force restarting now..."
  systemctl restart nginx
else
  echo "Nginx is dead. Starting it now..."
  systemctl start nginx
fi

echo "== Step 4: show last 5 nginx logs (journalctl) =="
journalctl -u nginx -n 5 --no-pager
