#!/usr/bin/env bash
set -e
mkdir -p vendor
echo "Downloading hanzi-writer.min.js (2.1.2) ..."
curl -L "https://unpkg.com/hanzi-writer@2.1.2/dist/hanzi-writer.min.js" -o vendor/hanzi-writer.min.js
echo "Done. You can now upload the 'vendor' folder to your GitHub repo root."
echo "(Optional) For hanzi-writer-data: run 'npm i hanzi-writer-data@2.0' then copy to vendor/hanzi-writer-data/"
