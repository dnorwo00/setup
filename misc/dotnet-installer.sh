# Instructions found at https://docs.microsoft.com/en-us/dotnet/core/install/linux-package-manager-ubuntu-1904
# Link to there was found at https://dotnet.microsoft.com/download
# Via https://softchris.github.io/pages/dotnet-core.html#resources

wget -q https://packages.microsoft.com/config/ubuntu/19.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb

sudo apt update -y
sudo apt install apt-transport-https dotnet-sdk-3.1 aspnetcore-runtime-3.1 dotnet-runtime-3.1 -y

