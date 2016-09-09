# Start from a Debian image with the latest version of Go installed
# and a workspace (GOPATH) configured at /go.
FROM golang

# Copy the local package files to the container's workspace.
ADD . /go/src/github.com/anhowe/go-scratch

# Build the outyet command inside the container.
# (You may fetch or manage dependencies here,
# either manually or with a tool like "godep".)
RUN go install github.com/anhowe/go-scratch

# Run the outyet command by default when the container starts.
ENTRYPOINT /go/bin/go-scratch

# Document that the service listens on port 4001.
EXPOSE 4001
