FROM golang:rc-alpine
ENV GOPATH /go
ADD entrypoint.sh /entrypoint.sh
RUN apk update ; \
        apk add git;\
        export GOPATH=/go; \
        go get github.com/shadowsocks/go-shadowsocks2; \
        rm -rf /usr/local; 
CMD /entrypoint.sh

