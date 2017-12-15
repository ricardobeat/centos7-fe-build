
image_name = ricardobeat/centos7-fe-build

build:
	docker build -t $(image_name) .

push:
	docker push $(image_name)

PHONY: build push
