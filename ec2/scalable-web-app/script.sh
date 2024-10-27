#!/bin/bash
# Update the package list
sudo apt update -y

# Install Node.js and npm
curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt install -y nodejs

# Confirm installation
node -v
npm -v

# Clone your application (assuming it’s hosted on GitHub)
# Replace with your repository URL
git clone https://github.com/rajnages/aws.git /home/ubuntu/aws

# Navigate to your application directory
cd /home/ubuntu/aws

# Install the required packages
npm install

# Start the application (this is a basic example; for production, use a process manager like PM2)
cd /home/ubuntu/aws/ec2/scalable-web-app; npm start &

# Optional: Redirect traffic on port 80 to the application port (if running on a different port, e.g., 3000)
# Uncomment the following line if needed:
# sudo iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 3000
