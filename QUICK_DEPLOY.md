# Quick Deploy Instructions for Parixit6174

## Step 1: Create GitHub Repository

1. Go to: https://github.com/new
2. Repository name: `portfolio` (or any name you prefer)
3. Description: "Futuristic portfolio website"
4. Set to **Public** (required for free GitHub Pages)
5. **DO NOT** check "Add a README file" (we already have one)
6. **DO NOT** add .gitignore or license
7. Click **"Create repository"**

## Step 2: Push Your Code

After creating the repository, run this command:

```powershell
git push -u origin main
```

Or if you prefer, run the deployment script:
```powershell
.\deploy.ps1 -GitHubUsername "Parixit6174" -RepoName "portfolio"
```

## Step 3: Enable GitHub Pages

1. Go to: https://github.com/Parixit6174/portfolio/settings/pages
2. Under **Source**, select:
   - Branch: `main`
   - Folder: `/ (root)`
3. Click **Save**

## Step 4: Your Live Site

Your portfolio will be available at:
**https://parixit6174.github.io/portfolio/**

(It may take 1-2 minutes after enabling Pages)

---

**Note:** If you use a different repository name, update the remote URL:
```powershell
git remote set-url origin https://github.com/Parixit6174/YOUR_REPO_NAME.git
```

