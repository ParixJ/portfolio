# Futuristic Portfolio Website

A sleek, minimalistic, and modern portfolio website for Parixit Jagada - a 16-year-old Software Engineer & Machine Learning Enthusiast from Rajkot, Gujarat, India.

## Features

- **Futuristic Dashboard UI**: Dark theme with modern, sleek design
- **Interactive Cursor Gradient**: Dynamic gradient effect that follows cursor movement
- **Scroll Animations**: Smooth fade-in animations for skills and sections as you scroll
- **Responsive Design**: Fully responsive across all device sizes
- **Performance Optimized**: Uses Intersection Observer API and requestAnimationFrame for smooth performance

## Tech Stack

- HTML5
- CSS3 (with CSS Custom Properties)
- Vanilla JavaScript
- GitHub Pages (for deployment)

## Project Structure

```
/
├── index.html          # Main HTML structure
├── styles/
│   └── main.css       # All styling including animations
├── scripts/
│   └── main.js        # Cursor tracking, scroll animations
└── README.md          # This file
```

## Local Development

1. Clone the repository:
```bash
git clone <your-repo-url>
cd <your-repo-name>
```

2. Open `index.html` in your browser or use a local server:
```bash
# Using Python
python -m http.server 8000

# Using Node.js (with http-server)
npx http-server

# Using PHP
php -S localhost:8000
```

3. Navigate to `http://localhost:8000` in your browser

## Deployment to GitHub Pages

### Method 1: Using GitHub Web Interface

1. Push your code to a GitHub repository
2. Go to your repository on GitHub
3. Click on **Settings** tab
4. Scroll down to **Pages** section (in the left sidebar)
5. Under **Source**, select the branch you want to deploy (usually `main` or `master`)
6. Select the folder (usually `/root`)
7. Click **Save**
8. Your site will be available at `https://<username>.github.io/<repository-name>`

### Method 2: Using GitHub CLI

```bash
# Install GitHub CLI if not already installed
# Then authenticate
gh auth login

# Create and push to repository
git init
git add .
git commit -m "Initial commit: Portfolio website"
git branch -M main
git remote add origin https://github.com/<username>/<repository-name>.git
git push -u origin main

# Enable GitHub Pages
gh repo edit --enable-pages
gh pages deploy --source main
```

### Method 3: Using Git Commands

```bash
# Initialize repository
git init
git add .
git commit -m "Initial commit: Portfolio website"

# Add remote repository
git remote add origin https://github.com/<username>/<repository-name>.git

# Push to GitHub
git branch -M main
git push -u origin main
```

Then follow Method 1 steps 2-8 to enable GitHub Pages.

## Customization

### Updating Personal Information

Edit `index.html` to update:
- Name, title, location in the hero section
- About section content
- Skills and projects
- Contact links and social media

### Changing Colors

Edit CSS variables in `styles/main.css`:
```css
:root {
    --accent-cyan: #00d4ff;
    --accent-purple: #7c3aed;
    --accent-blue: #3b82f6;
    /* ... other variables */
}
```

### Adjusting Cursor Gradient

Modify the gradient in `styles/main.css`:
```css
.cursor-gradient {
    background: radial-gradient(
        circle 600px at var(--cursor-x) var(--cursor-y),
        rgba(0, 212, 255, 0.15) 0%,
        /* ... adjust colors and sizes */
    );
}
```

### Modifying Animation Speed

Change transition durations in `styles/main.css`:
```css
--transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
```

## Browser Support

- Chrome (latest)
- Firefox (latest)
- Safari (latest)
- Edge (latest)

## Performance Notes

- Uses Intersection Observer API for efficient scroll animations
- Cursor gradient uses requestAnimationFrame for smooth updates
- CSS animations are hardware-accelerated
- Optimized for 60fps performance

## License

This project is open source and available for personal use.

## Contact

For questions or suggestions, feel free to reach out!

---

Built with passion and first principles thinking.

