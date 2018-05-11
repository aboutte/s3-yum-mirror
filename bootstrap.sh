#!/usr/bin/env bash

set -e

echo "Registering with RedHat..."
subscription-manager register --type="system" --auto-attach --username="$RHEL_USERNAME" --password="$RHEL_PASSWORD"

yum -y update
yum -y install ruby rubygems ruby-devel rsync createrepo
yum clean all

gem install bundler

cd /
bundle install