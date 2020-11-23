# Install .Net Core SDK
wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb

apt-get update; \
  apt-get install -y apt-transport-https && \
  apt-get update && \
  apt-get install -y dotnet-sdk-3.1

# Validate installation
echo "Validate the .Net Core SDK installation"
if ! command -v dotnet; then
    echo ".Net Core SDK was not installed"
    exit 1
fi