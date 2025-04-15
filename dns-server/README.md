# BIND9 DNS Server

A Docker-based BIND9 DNS server configured to serve the domain `gunnisvr.com`.

## Features

- Set up to return "ok" when querying gunnisvr.com TXT record
- Configured to handle DNS requests for gunnisvr.com domain
- Maps domain to host IP (192.168.0.202)

## Usage

1. Build and start the containers:
   ```
   docker-compose up -d
   ```

2. Test the DNS server:
   ```
   dig @localhost gunnisvr.com TXT
   ```

   Expected output should include:
   ```
   gunnisvr.com.		604800	IN	TXT	"ok"
   ```

## Configuration

- DNS server runs on port 53 (TCP/UDP)
- Located at 172.20.0.2 in the Docker network
- Forward DNS queries to Google DNS (8.8.8.8, 8.8.4.4)

## Notes

You may need to update your network configuration to use this DNS server.