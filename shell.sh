#!/bin/bash

# 获取阿里云服务器的公网 IP 地址
server_ip=$(curl -s http://whatismyip.akamai.com/)

# 设置用户名、密码以及 IPSec 预共享密钥
username="2151273"
password="TONGJIjiayou,.09"
ipsec_pre_shared_key="TONGJIjiayou,.09"

# 输出阿里云服务器的公网 IP 地址
echo "阿里云服务器 IP 地址为：$server_ip"

# 设置用户名和密码
echo "设置用户名和密码..."
echo "$username:$password" | chpasswd

# 设置 IPSec 预共享密钥
echo "设置 IPSec 预共享密钥..."
echo "$ipsec_pre_shared_key" > /etc/ipsec.secrets

echo "完成设置！"
