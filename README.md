# Nginx Reverse Proxy in Docker Containers with Let's Encrypt SSL

## Introduction

This repository provides a streamlined deployment of an Nginx reverse proxy with Let's Encrypt SSL in Docker containers. The setup includes a `docker-compose.yaml` and an Ansible playbook (`run-playbook.yaml`).

### Scheme of project

![alt text](project_scheme.png)

### Containers in this Setup:

-  Nginx Reverse Proxy container with 404.html and 50x.html error pages
-  Nginx Development container (for testing purposes)
-  Nginx Production container (for production purposes)
-  All containers are equipped with Let's Encrypt SSL certificates

(You can easily extend this setup by adding more containers)
(All containers operate on the same server)

## Prerequisites

-  A domain name (you can use [DuckDNS](https://www.duckdns.org/) for a free domain name)
-  Public IP address of your server instance
-  Server instance (e.g., AWS EC2, DigitalOcean Droplet, etc.)
-  Ansible installed on your local machine (if opting for the Ansible playbook)

## Installation Steps

1. Clone the repository
2. Update the `docker-compose.yaml` with your domain name and email address
3. Update `reverse-proxy-nginx-container/config` with your domain name and `proxy_pass` settings
4. Update the `run-playbook.yaml` with your domain name and email address
5. Run the Ansible playbook

You should have to open the ports 80 and 443 in your server instance.