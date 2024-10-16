#!/bin/bash

# Script to install Terraform on Ubuntu

# Update the system
echo "Updating package list..."
sudo apt-get update -y

# Install dependencies
echo "Installing required dependencies..."
sudo apt-get install -y gnupg software-properties-common curl

# Add the HashiCorp GPG key
echo "Adding HashiCorp GPG key..."
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg

# Add the HashiCorp repository
echo "Adding HashiCorp repository to the system..."
sudo tee /etc/apt/sources.list.d/hashicorp.list << EOF
deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main
EOF

# Update the package list again
echo "Updating package list with new repository..."
sudo apt-get update -y

# Install Terraform
echo "Installing Terraform..."
sudo apt-get install -y terraform

# Verify Terraform installation
echo "Verifying Terraform installation..."
terraform -v

echo "Terraform installation completed."
