FROM golang:rc-alpine
ENV GOPATH /go
RUN apk update ; \
        apk add git;\
        export GOPATH=/go; \
        go get github.com/shadowsocks/go-shadowsocks2

CMD ["/go/bin/go-shadowsocks2", "-s", ":8443", "-cipher", "aes-128-ctr", "-key", $KEY, "-verbose"]

