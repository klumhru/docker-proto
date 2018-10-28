Docker Protobuf Image
===

Simple docker image that downloads a version of protobuf, installs it and adds proto-gen-go.

## Building

The build takes a single argument VERSION, which controls the version of protoc installed. Check [the latest releases](https://github.com/protocolbuffers/protobuf/releases) for available versions.

## Usage

```bash
docker run --rm -v ${PWD}:/go/src/project klumhru/proto protoc --workdir /go/src/project -u $(id -u) --go_out=. *.proto
```