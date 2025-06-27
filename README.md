```markdown
#               HEAD

Static Website Deployment via Terraform & GitHub Actions
This project demonstrates how to provision an AWS EC2 instance using Terraform, configure it with Nginx, and deploy a static website using GitHub Actions for CI/CD.

#             OVERVIEW

Terraform provisions an Amazon Linux 2 EC2 instance with Nginx 
pre-installed
Nginx serves a basic HTML file from the site/ folder
GitHub Actions deploys site updates automatically on each push to the main branch
GitHub Secrets manage SSH and EC2 connection data securely

# Project Structure

.
├── terraform/
│   ├── main.tf               # Terraform configuration
│   └── user_data.sh          # EC2 bootstrapping script
├── site/
│   └── index.html            # Static website homepage
├── .github/
│   └── workflows/
│       └── deploy.yml        # CI/CD GitHub Actions pipeline
└── README.md

#    Requirements
Before you begin, ensure you have:

An AWS account with access to create EC2 instances
Terraform installed locally
A GitHub account and this repository created
An EC2 key pair (public/private)

# Setup Instructions
1. Clone the Repo  
   ```bash
   git clone https://github.com/Alphaperry/static-site-deploy.git
   cd static-site-deploy
