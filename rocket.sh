#!/usr/bin/env bash
set -e -x -u -x -v -o pipefail
curl https://storage.googleapis.com/golang/go1.7.1.linux-amd64.tar.gz | tar xz -C /usr/local
export PATH=$PATH:/usr/local/go/bin
export GOPATH=${GOPATH-/go}
mkdir -p $GOPATH
go get github.com/nlopes/slack
go build
go test ./...
