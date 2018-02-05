DATE:=$(shell date +"%Y-%m-%d_%H-%M-%S")

build:
	docker build -t truckpad/asterisk-docker:latest -t truckpad/asterisk-docker:${DATE}  .

clean:
	docker rmi truckpad/asterisk-docker

run:
	docker run --rm truckpad/asterisk-docker
	exit 0

push: build
	docker push truckpad/asterisk-docker:latest
	docker push truckpad/asterisk-docker:${DATE}
