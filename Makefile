.PHONY: all build test lint

# 镜像信息请按实际情况调整
IMAGE_REGISTRY = example.com
IMAGE_NAMESPACE = demo
IMAGE_NAME    := nocalhost-jrebel-demo
BUILD_HASH ?= $(shell git rev-parse HEAD)
IMAGE_VERSION ?= latest

build:
	mvn clean install -Dmaven.test.skip

push:
	make build
	docker build -t $(IMAGE_NAME):$(BUILD_HASH) .
	docker tag $(IMAGE_NAME):$(BUILD_HASH) ${IMAGE_REGISTRY}/${IMAGE_NAMESPACE}/$(IMAGE_NAME):$(IMAGE_VERSION)
	docker push ${IMAGE_REGISTRY}/${IMAGE_NAMESPACE}/$(IMAGE_NAME):$(IMAGE_VERSION)