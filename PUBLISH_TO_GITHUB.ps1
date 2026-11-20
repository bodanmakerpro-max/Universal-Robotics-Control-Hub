# Publish the extracted folder to an empty GitHub repository.
# Prerequisites: Git for Windows and a NEW EMPTY repo named Universal-Robotics-Control-Hub.
$ErrorActionPreference = 'Stop'
Set-Location -Path $PSScriptRoot
if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
  throw 'Git is not installed. Install Git for Windows first.'
}
if (-not (Test-Path '.git')) { git init; if ($LASTEXITCODE -ne 0) { throw 'git init failed' } }
git add .
if ($LASTEXITCODE -ne 0) { throw 'git add failed' }
git diff --cached --quiet
if ($LASTEXITCODE -ne 0) {
  git commit -m 'Initial Universal Robotics Control Hub documentation and design files'
  if ($LASTEXITCODE -ne 0) { throw 'git commit failed. Set git user.name and user.email if requested.' }
}
git branch -M main
$remote = 'https://github.com/bodanmakerpro-max/Universal-Robotics-Control-Hub.git'
$existing = git remote get-url origin 2>$null
if ($LASTEXITCODE -ne 0) { git remote add origin $remote }
elseif ($existing.Trim() -ne $remote) { throw "origin already points to a different repository: $existing" }
git push -u origin main
if ($LASTEXITCODE -ne 0) { throw 'Push failed. Check that the blank GitHub repo exists and you are signed in.' }
Write-Host 'Published to https://github.com/bodanmakerpro-max/Universal-Robotics-Control-Hub'