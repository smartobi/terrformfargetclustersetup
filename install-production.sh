#!/bin/bash

sudo apt-get update -y
wget -O - https://swupdate.openvpn.net/repos/repo-public.gpg|apt-key add -

echo "deb http://build.openvpn.net/debian/openvpn/stable focal main" > /etc/apt/sources.list.d/openvpn-aptrepo.list

sudo apt-get update -y

sudo apt install openvpn=2.6.8-focal0  -y

wget https://github.com/OpenVPN/easy-rsa/releases/download/v3.1.7/EasyRSA-3.1.7.tgz
tar -zxf EasyRSA-3.1.7.tgz
sudo mv EasyRSA-3.1.7/ /etc/openvpn/easy-rsa
sudo ln -s /etc/openvpn/easy-rsa/easyrsa /usr/local/bin/

cd /etc/openvpn/easy-rsa
easyrsa init-pki

cat << EOF >> /etc/openvpn/easy-rsa/vars
set_var EASYRSA_REQ_COUNTRY     "US"
set_var EASYRSA_REQ_PROVINCE    "CA"
set_var EASYRSA_REQ_CITY        "San Jose"
set_var EASYRSA_REQ_ORG         "DevOpsbyEmma"
set_var EASYRSA_REQ_EMAIL       "emmanuel.enamejewa@maxdrive.ai"
set_var EASYRSA_REQ_OU          "DEMO"
set_var EASYRSA_ALGO            "ec"
set_var EASYRSA_DIGEST          "sha512"
set_var EASYRSA_REQ_CN           "OpenVPN CA"

EOF

easyrsa build-ca nopass