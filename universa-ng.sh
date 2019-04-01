#!/bin/sh

openssl genrsa -out node-private-key.pem 1024
openssl rsa -in node-private-key.pem -pubout > node-public-key.pub
PUB=`openssl enc -in node-public-key.pub -a`
IP=`ifconfig | grep inet | grep -v inet6 | grep broadcast | awk '{print $2}'`

read -r -d '' RESPONSE <<- EOM
HTTP/1.1 200 OK\r
Connection: keep-alive\r
\r
${2:-{
  'version': 1,
  'number': 1,
  'nodes': {
    'url': 'http://$IP:8080',
    'key': '$PUB',
    'number': 1
  }
}}\r\n
EOM

while true; do
  I=`{ echo -en "$RESPONSE"; } | nc -l "${1:-8080}"`
done
