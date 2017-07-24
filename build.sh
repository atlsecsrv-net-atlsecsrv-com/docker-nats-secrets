#!/bin/bash

set -e

env GOOS=linux GOARCH=amd64 go build main.go
file main
docker build -t nats-server-local .
