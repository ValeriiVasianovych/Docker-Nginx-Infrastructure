#!/bin/bash
echo url="https://www.duckdns.org/update?domains=YOUR_DOMAIN_1,YOUR_DOMAIN_2&token=a7c4d0ad-114e-40ef-ba1d-d217904a50f2&ip=" | curl -k -o ~/duckdns/duck.log -K -
