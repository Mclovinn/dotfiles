#!/usr/bin/env bash

# https://docs.docker.com/install/linux/docker-ce/ubuntu/
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
export LSB_ETC_LSB_RELEASE=/etc/upstream-release/lsb-release
V=$(lsb_release -cs)

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu ${V} stable"
sudo apt update -y
sudo apt install -y docker-ce

# https://docs.docker.com/install/linux/linux-postinstall/
sudo gpasswd -a "${USER}" docker