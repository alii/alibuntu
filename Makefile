build:
	docker build . -t ghcr.io/alii/alibuntu:latest

run:
	docker run --rm -it --entrypoint /bin/bash ghcr.io/alii/alibuntu:latest

push: build
	docker push ghcr.io/alii/alibuntu:latest
