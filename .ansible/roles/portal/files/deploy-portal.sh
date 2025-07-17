#!/bin/bash
set -e

# Define the target directory for the React build
TARGET_DIR="/var/www/jgirod.com.ar/html"
SOURCE_DIR="/tmp/portal-build"

# Create the target directory if it doesn't exist
mkdir -p "$TARGET_DIR"

# Remove existing content in the target directory
rm -rf "$TARGET_DIR"/*

# Move the new build files
mv "$SOURCE_DIR"/* "$TARGET_DIR"/

# Restart Nginx/OpenResty
systemctl restart openresty