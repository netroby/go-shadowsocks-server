#!/bin/sh
EKEY=$(echo $key|base64)
/go/bin/go-shadowsocks2 -s :8443 -cipher aes-128-ctr  -key $EKEY -verbose
