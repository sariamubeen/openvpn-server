#!/bin/bash

# This script installs OpenVPN Access Server on Linux

echo "Starting OpenVPN Access Server installation..."

# Run the installation command for OpenVPN Access Server
bash <(curl -fsS https://as-repository.openvpn.net/as/install.sh)

echo "Installation completed. Follow the instructions provided in the output."
