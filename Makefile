.PHONY: build-container
build-container:
	podman build -t git-deps .

install:
	./install.sh
