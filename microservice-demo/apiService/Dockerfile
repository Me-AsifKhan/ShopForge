FROM golang:1.15 AS builder

# Set GOPATH to build Go app
ENV GOPATH=/go

# Set apps source directory
ENV SRC_DIR=${GOPATH}/src/github.com/Joker666/microservice-demo/

# Define current working directory
WORKDIR ${SRC_DIR}

# Trust corp proxy root CA
COPY corp-ca.pem /usr/local/share/ca-certificates/corp-ca.crt
RUN update-ca-certificates

# Copy apps scource code to the image
COPY . ${SRC_DIR}

# Build App
RUN go mod verify
RUN go mod vendor
RUN go install -v ./...

EXPOSE 50059
ENTRYPOINT [ "apiService" ]
