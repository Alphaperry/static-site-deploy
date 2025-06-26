#!/bin/bash
yum update -y
amazon-linux-extras install nginx1 -y
systemctl start nginx
systemctl enable nginx

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
