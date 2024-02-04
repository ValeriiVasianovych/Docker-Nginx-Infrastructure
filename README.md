# Nginx Reverse Proxy in Docker Containers with Let's Encrypt SSL

## Introduction
This repository includes a `docker-compose` file for deploying a reverse proxy using Nginx and Let's Encrypt SSL certificates. The reverse proxy efficiently serves multiple web applications on a single server. SSL certificates are automatically obtained and renewed through the Let's Encrypt service. Requests to the reverse proxy are then forwarded to the appropriate web page based on the domain name, with these web pages hosted by separate Docker containers running web servers.

## Prerequisites
- Nginx reverse proxy container
- Production Nginx container
- Development Nginx container
- Let's Encrypt SSL certificates for the domains

All containers operate on the same server and are orchestrated by the `docker-compose` file.

Before utilizing this setup, ensure you have a server with a public IP address and a domain name. Additionally, Docker and Docker Compose should be installed on the server.

## Usage
1. Clone the repository to the server.
2. Modify the domain names and external IP address in the `/etc/nginx/conf.d/YOUR_DOMAIN.conf` file. Obtain a free domain name using [DuckDNS](https://www.duckdns.org/).
3. Execute the following command to start the reverse proxy and the web servers: 
    ```
    docker-compose up -d
    ```
4. Inside the reverse proxy container, run the following command to obtain SSL certificates for all your domains:
    ```
    docker exec -it CONTAINER_ID certbot --nginx -d YOUR_DOMAIN -d www.YOUR_DOMAIN
    ```
