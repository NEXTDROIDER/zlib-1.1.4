#!/usr/bin/env bash
set -euo pipefail

URL="https://github.com"
PKG_DIR=$(mktemp -d)

# Automatically remove the temporary directory on exit
trap 'rm -rf "$PKG_DIR"' EXIT

echo "Downloading package..."
curl -sSL "$URL" -o "$PKG_DIR/pkg.tar.zst"

echo "Installing package..."
sudo pacman -U --noconfirm "$PKG_DIR/pkg.tar.zst"

echo "Installed successfully!"
