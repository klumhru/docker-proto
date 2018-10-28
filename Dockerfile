FROM golang:stretch
ARG VERSION=3.6.1

RUN apt-get update -yqq && apt-get install -yqq autoconf automake libtool curl make g++ unzip
WORKDIR /tmp
RUN mkdir -p /tmp/protobuf
ADD https://github.com/protocolbuffers/protobuf/releases/download/v$VERSION/protobuf-all-$VERSION.tar.gz /tmp/protobuf.tar.gz
RUN tar zxf protobuf.tar.gz --strip-components=1 -C /tmp/protobuf
WORKDIR /tmp/protobuf
RUN ./configure
RUN make -j
RUN make check install
RUN go get -u github.com/golang/protobuf/protoc-gen-go
