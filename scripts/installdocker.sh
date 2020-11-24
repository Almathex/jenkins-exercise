#!/bin/bash
curl https://get.docker.com | bash
sudo usermod -aG docker $(whoami)
apt update
apt install -y curl jq
version=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | jq -r '.tag_name')
curl -L "https://github.com/docker/compose/releases/download/${version}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
