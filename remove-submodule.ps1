# PowerShell Script to Remove questline-2 Submodule
# This script converts the submodule to a regular directory

param(
    [string]$RepoPath = (Get-Location),
    [string]$SubmodulePath = "questline-2",
    [string]$CommitMessage = "Remove questline-2 submodule and convert to regular directory"
)

Write-Host "Starting removal of $SubmodulePath submodule..." -ForegroundColor Green

# Change to repo directory
Set-Location $RepoPath
Write-Host "Working directory: $(Get-Location)" -ForegroundColor Cyan

# Step 1: Remove the submodule from git tracking
Write-Host "`nStep 1: Removing submodule from git..." -ForegroundColor Yellow
git rm $SubmodulePath
if ($LASTEXITCODE -eq 0) {
    Write-Host "✓ Submodule removed from git" -ForegroundColor Green
} else {
    Write-Host "✗ Failed to remove submodule" -ForegroundColor Red
    exit 1
}

# Step 2: Clean up .gitmodules if it exists
Write-Host "`nStep 2: Cleaning up .gitmodules..." -ForegroundColor Yellow
if (Test-Path .gitmodules) {
    Remove-Item .gitmodules -Force
    git add .gitmodules
    Write-Host "✓ .gitmodules removed" -ForegroundColor Green
} else {
    Write-Host "✓ .gitmodules not found (no cleanup needed)" -ForegroundColor Green
}

# Step 3: Remove git submodule metadata
Write-Host "`nStep 3: Removing git submodule metadata..." -ForegroundColor Yellow
$modulePath = ".git\modules\$SubmodulePath"
if (Test-Path $modulePath) {
    Remove-Item $modulePath -Recurse -Force
    Write-Host "✓ Submodule metadata removed" -ForegroundColor Green
} else {
    Write-Host "✓ No submodule metadata found" -ForegroundColor Green
}

# Step 4: Commit the changes
Write-Host "`nStep 4: Committing changes..." -ForegroundColor Yellow
git commit -m $CommitMessage
if ($LASTEXITCODE -eq 0) {
    Write-Host "✓ Changes committed" -ForegroundColor Green
} else {
    Write-Host "⚠ Commit failed (may already be up to date)" -ForegroundColor Yellow
}

# Step 5: Push to remote
Write-Host "`nStep 5: Pushing to remote repository..." -ForegroundColor Yellow
git push origin main
if ($LASTEXITCODE -eq 0) {
    Write-Host "✓ Changes pushed to remote" -ForegroundColor Green
} else {
    Write-Host "✗ Failed to push changes" -ForegroundColor Red
    exit 1
}

Write-Host "`n========================================" -ForegroundColor Green
Write-Host "✓ Successfully removed $SubmodulePath submodule!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green
Write-Host "The folder is now a regular directory." -ForegroundColor Cyan
