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
bash
git clone https://github.com/Alphaperry/static-site-deploy.git
cd static-site-deploy
2. Deploy the Infrastructure
bash

cd terraform
terraform init
terraform apply

3. Add GitHub Secrets
In your GitHub repo:
Go to Settings → Secrets and variables → Actions → New repository secret
Add:
Secret Name	Description
EC2_PUBLIC_IP	The public IP of your EC2 instance
EC2_SSH_KEY	Your private SSH key (contents only)

4. Push a Site Update
bash

git add .
git commit -m "First website update"
git push origin main

This triggers the GitHub Actions pipeline which will deploy the updated site to EC2 via SSH.

Access Your Website
Visit the public IP in your browser:

cpp

http://<your-ec2-public-ip>
You should see your static HTML page served by Nginx.

# Security Notes
Never commit private keys to the repo

Use GitHub Secrets for secure handling of SSH credentials
Configure EC2 security group to only allow trusted IPs (e.g., port 22 & 80)

   Maintainer
Ndula Perry Bofuang
Certified AWS Cloud & DevOps Engineer

#  License
This project is licensed under the MIT License
Built with  by a Cloud Engineer who automates everything.

# static-site-deploy
Static website deployed via Terraform and GitHub
Actions


