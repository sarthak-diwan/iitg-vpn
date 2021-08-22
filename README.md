# iitg-vpn
Want to use IITG VPN for specific apps only. It runs the forticlient inside a docker container and opens a socks5 proxy for the host to access (default port 1337). You can then access any app supporting a socks5 proxy like firefox or using proxychains.

## Usage
First of all add VPN credentials in `run.sh` and then run the following command.
```bash
docker-compose up
```

