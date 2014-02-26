# playframework zip name
VERSION="play-2.2.1"
PKG="$VERSION.zip"

# playframework download URL
URL="http://downloads.typesafe.com/play/2.2.1/$PKG"

# Shell setup
unalias -a
hash -r
set -o errexit

# Make sure debconf is noninteractive
export DEBIAN_FRONTEND=noninteractive

# Update packages
apt-get update -y

## Upgrade packages
#apt-get dist-upgrade -y

# Install curl (in order to download playframework)
apt-get install -y curl unzip default-jre default-jdk

# Download playframework .zip to /tmp
curl --output "/tmp/$PKG" "$URL"
# Install playframework
cd /usr/local
unzip "/tmp/$PKG"
ln -s $VERSION play


