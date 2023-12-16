run_service:
	go run .


GOPATH_DIR := $(PWD)
GOPATH_DIR := $(shell dirname $(GOPATH_DIR))

set_vars:
	go env -w GO111MODULE=on
	mkdir -p ../GOPATH
	go env -w GOPATH=$(GOPATH_DIR)/GOPATH
	


install_deps:
	rm -f go.mod go.sum
	go mod init github.com/andriykusevol/go_simple_template
	go mod tidy

build:
	go build

install:
	go install	

test:
	go test -v ./...