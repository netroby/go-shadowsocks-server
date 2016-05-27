FROM alpine
RUN apk update ; \
        apk add git go;\
        export GOPATH=/opt/go; \
        go get github.com/shadowsocks/shadowsocks-go/cmd/shadowsocks-server; \
        mv /opt/go/bin/shadowsocks-server /bin/shadowsocks-server;\
        apk del openssl ca-certificates libssh2 curl expat pcre git go;\
        rm -rf /opt/go ;\
        rm -rf /usr/lib/go;

