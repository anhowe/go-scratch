#!/bin/bash

export GOPATH=/gopath
cd $GOPATH
mkdir -p src/github.com/anhowe/
cd src/github.com/anhowe/
git clone https://github.com/anhowe/go-scratch.git
go build github.com/anhowe/go-scratch
