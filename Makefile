all: build

build:
	@docker build --tag=rajalokan/ubuntu:latest .

release: build
	@docker build --tag=rajalokan/ubuntu:$(shell cat VERSION) .
