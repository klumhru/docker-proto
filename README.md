Docker Protobuf Image
===

Simple docker image that downloads a version of protobuf, installs it and adds proto-gen-go.

## Usage

The image entrypoint is protoc, so just append whatever protoc args you want.

```bash
docker run --rm -v ${PWD}:/go/src/project --workdir /go/src/project -u $(id -u) klumhru/proto --go_out=. *.proto
```