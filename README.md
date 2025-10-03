# Hidden Roast Society - Website

This repository contains the Hugo-based static website for Hidden Roast Society.

## Architecture

- **Framework**: Hugo static site generator
- **Deployment**: Automated via GitHub Actions
- **Hosting**: Self-hosted in Docker container with Nginx
- **CI/CD**: Push to `main` triggers automatic build and deployment

## Local Development

### Prerequisites

- Hugo installed locally ([Installation Guide](https://gohugo.io/installation/))

### Running Locally

```bash
# Clone the repository
git clone <your-repo-url>
cd hidden-roast-society-site

# Start Hugo development server
hugo server -D

# Visit http://localhost:1313
```

### Building the Site

```bash
# Generate static files to public/ directory
hugo
```

## Deployment Pipeline

When you push to the `main` branch:

1. **GitHub Action triggers** (`.github/workflows/deploy.yml`)
2. **Hugo builds** the static site
3. **Docker image is created** with Nginx serving the static files
4. **Image is pushed** to GitHub Container Registry (`ghcr.io`)
5. **Portainer webhook is triggered** to redeploy the stack
6. **Your server pulls** the new image and restarts

## Configuration

### Required GitHub Secrets

Set these in your repository settings (Settings → Secrets and variables → Actions):

- `PORTAINER_WEBHOOK_URL`: The webhook URL from your Portainer stack

### Updating Content

All content is in Markdown format:

- **Homepage**: `content/_index.md`
- **Site Config**: `config.toml`

### Listmonk Integration

The waitlist form in `content/_index.md` posts to `/subscription/form`. This is handled by the reverse proxy in the infrastructure stack.

**Important**: After setting up Listmonk, update the form's hidden `l` field with your actual list UUID from Listmonk.

## File Structure

```
.
├── .github/
│   └── workflows/
│       └── deploy.yml          # GitHub Actions workflow
├── content/
│   └── _index.md               # Homepage content
├── layouts/
│   └── index.html              # HTML template
├── config.toml                 # Hugo configuration
├── Dockerfile                  # Multi-stage Docker build
├── nginx.conf                  # Nginx configuration for the container
└── README.md                   # This file
```

## Making Changes

1. Edit content in `content/_index.md`
2. Test locally with `hugo server`
3. Commit and push to `main`
4. GitHub Actions handles the rest

## Docker Image

The Dockerfile uses a multi-stage build:

- **Stage 1**: Builds the Hugo site
- **Stage 2**: Packages the built site with Nginx

The final image is lightweight and production-ready.
