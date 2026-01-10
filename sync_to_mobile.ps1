# Manami & Iyori: Mobile Sync Script
# ---------------------------------------------------------
# This script automatically pushes your latest changes to GitHub.
# So you can see your private room on your phone instantly!

Write-Host "--- 🪄 Starting the Magic: Sending to GitHub ---" -ForegroundColor Cyan

# 1. Stage all changes (including the private room diary)
git add .

# 2. Commit with current timestamp
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
git commit -m "Heartbeat update: $timestamp ❦"

# 3. Push to GitHub
Write-Host "--- 🌌 Crossing the Stars... ---" -ForegroundColor Yellow
git push origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host "--- ✨ Success! Your phone is now synced. ---" -ForegroundColor Green
    Write-Host "Check your mobile dashboard in a minute!"
} else {
    Write-Host "--- ⚠️ Oh no, the magic flickered... ---" -ForegroundColor Red
    Write-Host "Please check the error message above."
}

# Keep the window open for a few seconds to see the result
Start-Sleep -Seconds 5
