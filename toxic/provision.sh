#!/usr/bin/env bash

# +----------------------------------------------------------+
# | BASH : Modifying Shell Behaviour
# |    (https://www.gnu.org/software/bash/manual)
# +----------------------------------------------------------+
# Treat unset variables and parameters other than the special
# parameters ‘@’ or ‘*’ as an error when performing parameter
# expansion. An error message will be written to the standard
# error, and a non-interactive shell will exit.
set -o nounset

# Exit immediately if a pipeline returns a non-zero status.
set -o errexit

# If set, the return value of a pipeline is the value of the
# last (rightmost) command to exit with a non-zero status, or
# zero if all commands in the pipeline exit successfully.
set -o pipefail

# +----------------------------------------------------------+
export DEBIAN_FRONTEND=noninteractive

apt-get -y install software-properties-common
apt-get -y install git
apt-get -y install curl
apt-get -y install wget
apt-get -y install unzip

# deadsnakes maintains a bunch of python versions for Ubuntu.
add-apt-repository -y ppa:deadsnakes/ppa
apt-get update
apt-get -y install python3.10
apt-get -y install python3-pip

apt-get -y install python3.7
apt-get -y install python3.7-distutils
apt-get -y install python3.8
apt-get -y install python3.8-distutils
apt-get -y install python3.9
apt-get -y install python3.9-distutils
apt-get -y install python3.11
apt-get -y install python3.11-distutils
apt-get -y install python3.12
apt-get -y install python3.12-distutils


pip3 install tox
pip3 install nox

echo "export PATH=$PATH" >> ~/.bashrc
echo "export LANG=en_US.UTF-8" >> ~/.bashrc
echo "export LANGUAGE=en_US:en" >> ~/.bashrc
echo "export LC_ALL=en_US.UTF-8" >> ~/.bashrc
echo "alias la=\"ls -lah\"" >> ~/.bashrc
