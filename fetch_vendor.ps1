# PowerShell fetch script for Windows
New-Item -ItemType Directory vendor -Force | Out-Null
Write-Host "Downloading hanzi-writer.min.js (2.1.2) ..."
Invoke-WebRequest -Uri "https://unpkg.com/hanzi-writer@2.1.2/dist/hanzi-writer.min.js" -OutFile "vendor/hanzi-writer.min.js"
Write-Host "Done. Upload the 'vendor' folder to your GitHub repo root."
Write-Host "(Optional) For hanzi-writer-data: install via npm and copy to vendor/hanzi-writer-data/"
