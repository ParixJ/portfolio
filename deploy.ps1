# GitHub Deployment Script
# Run this after creating your GitHub repository

param(
    [Parameter(Mandatory=$true)]
    [string]$GitHubUsername,
    
    [Parameter(Mandatory=$false)]
    [string]$RepoName = "portfolio"
)

Write-Host "🚀 Deploying portfolio to GitHub Pages..." -ForegroundColor Cyan
Write-Host ""

# Navigate to project directory
$projectPath = "C:\Users\Parixit\Documents\Artificial Intelligence\Projects\New folder (8)"
Set-Location $projectPath

# Check if remote already exists
$remoteExists = git remote get-url origin 2>$null
if ($remoteExists) {
    Write-Host "⚠️  Remote 'origin' already exists. Removing it..." -ForegroundColor Yellow
    git remote remove origin
}

# Add remote
Write-Host "📡 Adding GitHub remote..." -ForegroundColor Cyan
git remote add origin "https://github.com/$GitHubUsername/$RepoName.git"

# Push to GitHub
Write-Host "📤 Pushing code to GitHub..." -ForegroundColor Cyan
git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "✅ Successfully pushed to GitHub!" -ForegroundColor Green
    Write-Host ""
    Write-Host "📋 Next steps:" -ForegroundColor Yellow
    Write-Host "1. Go to: https://github.com/$GitHubUsername/$RepoName/settings/pages" -ForegroundColor White
    Write-Host "2. Under 'Source', select:" -ForegroundColor White
    Write-Host "   - Branch: main" -ForegroundColor White
    Write-Host "   - Folder: / (root)" -ForegroundColor White
    Write-Host "3. Click 'Save'" -ForegroundColor White
    Write-Host ""
    Write-Host "🌐 Your site will be live at:" -ForegroundColor Cyan
    Write-Host "   https://$GitHubUsername.github.io/$RepoName/" -ForegroundColor White
    Write-Host ""
    Write-Host "⏳ It may take 1-2 minutes for the site to be available." -ForegroundColor Yellow
} else {
    Write-Host ""
    Write-Host "❌ Error pushing to GitHub. Make sure:" -ForegroundColor Red
    Write-Host "1. The repository exists at: https://github.com/$GitHubUsername/$RepoName" -ForegroundColor White
    Write-Host "2. You have push access to the repository" -ForegroundColor White
    Write-Host "3. You're authenticated (may need Personal Access Token)" -ForegroundColor White
}

