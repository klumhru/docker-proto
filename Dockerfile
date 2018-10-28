FROM golang:stretch
ARG VERSION=3.6.1

RUN apt-get update -yqq && apt-get install -yqq \
  autoconf automake libtool curl make g++ unzip \
  libprotoc-dev libprotobuf10 libprotoc10 protobuf-compiler
WORKDIR /tmp
RUN mkdir -p /tmp/protobuf
RUN go get -u github.com/golang/protobuf/protoc-gen-go

ENTRYPOINT [ "protoc" ]