#!/bin/bash
# <UDF name="pub_key" label="Your public SSH key" example="ssh-rsa F00BA4BA5 foo@bar.baz (mbp)">
# PUB_KEY= 

# Install the given key
mkdir /root/.ssh
chmod 700 /root/.ssh
echo "$PUB_KEY" > /root/.ssh/authorized_keys
chmod 600 /root/.ssh/authorized_keys

# Get up to date
yum update -y
