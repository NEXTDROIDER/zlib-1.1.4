#!/usr/bin/env bash
set -euo pipefail

URL="https://github.com/NEXTDROIDER/zlib-1.1.4/releases/download/1.1.4/zlib1.1.4-1.1.4-1-x86_64.pkg.tar.zst"
PKG_DIR=$(mktemp -d)

# Automatically remove the temporary directory on exit
trap 'rm -rf "$PKG_DIR"' EXIT

echo "Downloading package..."
curl -sSL "$URL" -o "$PKG_DIR/pkg.tar.zst"

echo "Installing package..."
sudo pacman -U --noconfirm "$PKG_DIR/pkg.tar.zst"

echo "Installed successfully!"
