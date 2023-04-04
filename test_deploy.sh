#!/bin/bash
set -x
## Checks to quantify the status the deployed service 
## YS 17/12/2018

## Variables
TEST_IP="192.168.150.10"
PKGS=(ansible python docker)


checkHostStatus() {

ping -c 1  ${TEST_IP} &> /dev/null && echo -e "Vagrant Host: Up" || echo -e "Vagrant Host: Down"
}
checkNginxHealthCheck() {

#NGINX_PAGE_STATUS=`curl -L http://localhost:8080`
NGINX_PAGE_STATUS=`$(curl --write-out %{http_code} --silent --output /dev/null http://localhost:8080)`

if [ "${NGINX_PAGE_STATUS}" = 200 ];
  then
    echo "Nginx is Up and Running"
  else
    echo "Nginx not setup properly"
fi
}
checkHostStatus
checkNginxHealthCheck

echo "Hello"
