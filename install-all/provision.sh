#!/usr/bin/env bash

# Update all of the package references before installing anything
echo "Running apt-get update..."
apt-get -y update

echo "Installing misc utilities"
sudo apt-get install curl
sudo apt-get install dos2unix
sudo apt-get install unzip
sudo apt-get install vim
sudo apt-get install htop
sudo apt-get install terminator
sudo apt-get install tree
sudo apt-get install dos2unix
echo "Misc utilities setup completed"

echo "Installing yarn"
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
npm install -g yarn
echo "yarn setup completed"

echo "Installing cross-env"
npm install -g cross-env
echo "cross-env setup completed"

echo "Installing webpack"
yarn global add webpack-cli webpack
echo "webpack setup completed"

echo "Installing vue cli"
yarn global add @vue/cli
vue --version
echo "Vue-cli setup completed"

echo "Add various aliases"
echo 'alias sf="php bin/console"' >> /home/vagrant/.bash_aliases
echo 'alias t="yarn test"' >> /home/vagrant/.bash_aliases
echo 'alias b="yarn build"' >> /home/vagrant/.bash_aliases
echo 'alias d="yarn dev"' >> /home/vagrant/.bash_aliases
