
# OpenVPN Access Server Installation Script

This repository contains a script to easily install **OpenVPN Access Server** on Linux distributions such as **Ubuntu**, **Debian**, and **RedHat**.

## About OpenVPN Access Server

OpenVPN Access Server is a powerful, secure VPN solution that provides private network access over the internet. It includes a web-based interface for both administration and client configuration, making it easy to manage and use.

### Key Features:
- **Two Free VPN Connections**: The Access Server provides up to two simultaneous VPN connections for free.
- **Cross-platform Compatibility**: Supports various platforms like Windows, macOS, Linux, iOS, and Android.
- **Easy Management**: Access through a user-friendly web interface for both admins and clients.

## Prerequisites

Before you begin, ensure that:
- You have **root** (sudo) access to your server.
- Ports **943**, **443**, and **1194** (UDP) are open on your firewall.

## Installation Steps

### Step 1: Clone the Repository

To start, clone this repository onto your local machine or directly onto your Linux server:

```bash
git clone https://github.com/sariamubeen/openvpn-server.git
cd openvpn-server
```

### Step 2: Run the Installation Script

Run the script to automatically install OpenVPN Access Server. It will download and install the necessary software on your system:

```bash
bash openvpn_install.sh
```

Alternatively, you can run the script directly from the GitHub repository without cloning:

```bash
bash <(curl -fsSL https://raw.githubusercontent.com/sariamubeen/openvpn-server/main/openvpn_install.sh)
```

### Step 3: Access the Admin and Client Web UI

After installation, you can manage the OpenVPN server through the web-based Admin UI and allow users to connect through the Client UI.

- **Admin UI**: `https://your-server-ip:943/admin`
- **Client UI**: `https://your-server-ip:943/`

Replace `your-server-ip` with your actual server's IP address.

### Step 4: Log In to the Admin UI

Use the following details to log into the Admin UI:

- **Username**: `openvpn`
- The password will be set during the installation process.

Once logged in, you can configure the server, manage users, and set up VPN connections.

## What Does This Script Do?

This installation script:
- Downloads the latest version of **OpenVPN Access Server** from the official repository.
- Installs and configures the Access Server on your Linux distribution.
- Opens necessary ports: **TCP 943**, **TCP 443**, and **UDP 1194**.
- Sets up a default admin account (`openvpn`), which allows you to manage the server through the web-based Admin UI.

## Uninstalling OpenVPN Access Server

If you need to uninstall OpenVPN Access Server, you can use the following commands depending on your Linux distribution:

### On Ubuntu/Debian:

```bash
apt-get remove openvpn-as
rm -rf /usr/local/openvpn_as
```

### On RedHat/CentOS:

```bash
yum remove openvpn-as
rm -rf /usr/local/openvpn_as
```

## Known Limitations

- **Two Free VPN Connections**: The free tier of OpenVPN Access Server allows only two simultaneous VPN connections. If more connections are needed, you will need to purchase a license.
- Ensure that the necessary ports **943**, **443**, and **1194** are open on your firewall for proper functionality.

## Troubleshooting

If you face any issues during or after installation:
- Check that the correct ports are open on your firewall.
- Verify logs for any errors in `/var/log/openvpnas/`.
- For detailed help, refer to the official OpenVPN documentation or support.

## License

This repository is licensed under the MIT License. See the `LICENSE` file for more details.
