#!/bin/bash
##########################################
# Install Gitlab  Server on Ubuntu 18.04 #
#             by ventx GmbH              #
##########################################

# Path for openvpn vars
export DEBIAN_FRONTEND=noninteractive

# Starting Setup
echo "=======[ Installation started ]====="
echo "=======| 1. Update, upgrade and install tools"
apt-get update
apt-get upgrade -q -y | tee -a
sudo apt install ca-certificates -y

echo "=======| 2. Installing GitLab"
curl -LO https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh
sudo bash script.deb.sh
sudo EXTERNAL_URL="${var.subdomain}.${data.aws_route53_zone.hostedzone.name}" apt-get install gitlab-ce
sudo apt install 

echo "=======| 3. Firewall settings"
sudo ufw allow http
sudo ufw allow https
sudo ufw allow OpenSSH

echo "=======| 6. Setup gitlab"
#echo "letsencrypt['enable'] = true" >> /etc/gitlab/gitlab.rb
#echo "letsencrypt['contact_emails'] = ['alexander@ventx.de']" >> /etc/gitlab/gitlab.rb
sudo gitlab-ctl reconfigure















echo "==============END OF Installation============="