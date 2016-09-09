#!/bin/bash

export GOPATH=/gopath
cd $GOPATH
#mkdir -p src/github.com/anhowe/
#cd src/github.com/anhowe/
#git clone https://github.com/anhowe/go-scratch.git
#go build github.com/anhowe/go-scratch
if [ ! -d $GOPATH/src/github.com/anhowe ] ; then
  mkdir -p $GOPATH/src/github.com/anhowe/
  cd $GOPATH/src/github.com/anhowe/
  git clone https://github.com/anhowe/go-scratch.git
fi
 
go install github.com/anhowe/go-scratch
