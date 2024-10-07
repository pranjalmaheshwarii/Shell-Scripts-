# Update the package list
sudo apt-get update

# Install transport packages, certificates, and curl
sudo apt-get install -y apt-transport-https ca-certificates curl

# Download the Kubernetes signing key
sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg

# Add the Kubernetes repository to the apt sources list
echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list

# Update the package list again
sudo apt-get update

# Install kubectl
sudo apt-get install -y kubectl

# Verify kubectl installation
kubectl version --client
