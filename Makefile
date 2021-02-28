.PHONY: jax pytorch tensorflow all

jax:
	cd jax && ./build.sh

pytorch:
	cd pytorch && ./build.sh

tensorflow:
	cd tensorflow && ./build.sh


all: jax pytorch tensorflow
