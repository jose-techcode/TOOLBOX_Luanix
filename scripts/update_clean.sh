#!/bin/bash

# Sudo

# Stop in first error

set -e

# Update packages

echo "-----Updating packages-----"
echo ""

apt update

echo ""

# Upgrade packages

echo "-----Upgrading packages-----"
echo ""

apt upgrade -y

echo ""

# Optional: apt full-upgrade -y (can replace or remove packages if necessary to update them)

# Remove orphaned dependencies

echo "-----Removing oprhaned dependencies-----"
echo ""

apt autoremove -y

echo ""

# Clean old packages

echo "-----Cleaning old packages-----"
echo ""

apt autoclean -y

echo ""

# Optional: apt clean (careful with your packages)