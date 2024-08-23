echo "server update starting.."
echo "deb http://deb.debian.org/debian bullseye main" >> /etc/apt/sources.list
sed -i 's/^Types: deb/Types: deb deb-src/' /etc/apt/sources.list.d/ubuntu.sources

apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 605C66F00D6C9793 \
    0E98404D386FA1D9 648ACFD622F3D138

sudo apt-get update
sudo apt-get -y upgrade
echo "/nserver update finished"
