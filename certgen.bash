#!/bin/bash

echo "Creating RSA server.key"
openssl genrsa -out server.key 2048

echo "Creating server.crt"
openssl req -new -x509 -sha256 -key server.key -out server.crt -batch -days 3650
