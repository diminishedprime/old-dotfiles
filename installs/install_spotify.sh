#!/bin/bash

echo "Installing Spotify"

# Here you can find a build of Spotify for Linux. We are running this ourselves
# and we will try to make sure it keeps pace with its Mac and Windows siblings.
# However, this version is unsupported. You can tell us what you think and ask
# other users for help at The Spotify Community.

# Spotify for Linux is released as a Debian package. Our aim is that it should
# work with the latest Long Term Support release of Ubuntu, but we will try to
# make it work for other releases of Ubuntu and Debian as well.

# 1. Add the Spotify repository signing key to be able to verify downloaded packages
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886

# 2. Add the Spotify repository
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

# 3. Update list of available packages
sudo apt-get update

# 4. Install Spotify
sudo apt-get install spotify-client
