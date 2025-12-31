# GitHub Deployment Guide

Your code has been committed locally. Follow these steps to deploy to GitHub Pages:

## Step 1: Create GitHub Repository

1. Go to https://github.com/new
2. Repository name: `portfolio` (or any name you prefer)
3. Description: "Futuristic portfolio website for Parixit Jagada"
4. Set to **Public** (required for free GitHub Pages)
5. **DO NOT** initialize with README, .gitignore, or license (we already have files)
6. Click **Create repository**

## Step 2: Connect and Push to GitHub

After creating the repository, GitHub will show you commands. Use these (replace `<username>` with your GitHub username):

```bash
cd "C:\Users\Parixit\Documents\Artificial Intelligence\Projects\New folder (8)"
git remote add origin https://github.com/<username>/portfolio.git
git push -u origin main
```

Or if you prefer SSH:
```bash
git remote add origin git@github.com:<username>/portfolio.git
git push -u origin main
```

## Step 3: Enable GitHub Pages

1. Go to your repository on GitHub
2. Click **Settings** tab
3. Scroll down to **Pages** section (in left sidebar)
4. Under **Source**, select:
   - Branch: `main`
   - Folder: `/ (root)`
5. Click **Save**

## Step 4: Access Your Site

Your portfolio will be live at:
- `https://<username>.github.io/portfolio/`

It may take a few minutes for the site to be available after enabling Pages.

## Alternative: Quick Deploy Script

If you want, you can run this PowerShell script (update the username):

```powershell
$username = "YOUR_GITHUB_USERNAME"
$repoName = "portfolio"

cd "C:\Users\Parixit\Documents\Artificial Intelligence\Projects\New folder (8)"
git remote add origin "https://github.com/$username/$repoName.git"
git push -u origin main

Write-Host "Repository pushed! Now enable GitHub Pages in repository settings."
Write-Host "Your site will be at: https://$username.github.io/$repoName/"
```

## Troubleshooting

- If you get authentication errors, you may need to set up a Personal Access Token
- Make sure the repository is set to Public for free GitHub Pages
- Wait 1-2 minutes after enabling Pages for the site to be available

