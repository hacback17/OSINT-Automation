#!/bin/bash

# The script lets you perform whois on a list of IPs or domains and extract registrant names of those IPs or domains.

DOMAIN_LIST="0.0.0.1
0.0.0.2
0.0.0.3
domain.com"

for domain in $DOMAIN_LIST
do
  echo $domain
  whois $domain | grep 'person' | awk '{print $2, $3}'
  echo 
done

# RUN this: 
# bash get_whois_info.sh | tee whois_data.txt
