# Install Node.js LTS and NPM
curl -sL https://deb.nodesource.com/setup_lts.x | bash -
apt-get install -y nodejs
npm install -g npm
rm -rf ~/n

# Validate installation
echo "Validate Node.js installation"
if ! command -v node; then
    echo "Node.js was not installed"
    exit 1
fi
