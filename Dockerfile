FROM golang:rc-alpine
ENV GOPATH /go
ADD entrypoint.sh /entrypoint.sh
RUN apk update ; \
        apk add git;\
        export GOPATH=/go; \
        go get github.com/shadowsocks/go-shadowsocks2; \
        rm -rf /usr/local; 
CMD /go/bin/go-shadowsocks2 -s :8443 -cipher aes-128-ctr -password $PW -verbose

