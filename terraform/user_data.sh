#!/bin/bash
sudo yum update -y
sudo amazon-linux-extras enable nginx1
sudo yum clean metadata
sudo yum install -y nginx
sudo systemctl enable nginx
sudo systemctl start nginx

# Create a simple static site
cat <<EOF > /usr/share/nginx/html/index.html
<!DOCTYPE html>
<html>
<head>
  <title>Deployed via Terraform + CI/CD</title>
  <style>
    body { font-family: Arial, sans-serif; background-color: #f4f4f4; text-align: center; padding: 50px; }
    h1 { color: #333; }
    p { font-size: 18px; }
  </style>
</head>
<body>
  <h1> Hello from AWS EC2!</h1>
  <p>This static site was deployed via Terraform and will be updated via GitHub Actions.</p>
</body>
</html>
EOF
