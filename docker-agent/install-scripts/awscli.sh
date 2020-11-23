# Install AWS CLI v2
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
./aws/install -i /usr/local/aws-cli -b /usr/local/bin
rm awscliv2.zip
rm -rf aws

# Validate installation
echo "Validate the AWS CLI installation"
if ! command -v aws; then
    echo "AWS CLI was not installed"
    exit 1
fi