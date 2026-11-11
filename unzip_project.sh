#!/bin/bash
set -e

ZIP_FILE="VocaScreen_GitHub_Build.zip"

if [ ! -f "$ZIP_FILE" ]; then
  echo "ZIP file not found"
  exit 1
fi

mkdir -p extracted
unzip -o "$ZIP_FILE" -d extracted

find extracted -type f -print
