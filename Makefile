build:
	docker build . -t alibuntu

run:
	docker run --rm -it --entrypoint /bin/bash alibuntu
