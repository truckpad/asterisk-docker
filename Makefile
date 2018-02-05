build:
	docker build -t truckpad/asterisk-docker:latest -t truckpad/asterisk-docker:`date +"%Y-%m-%d_%H-%M-%S"`docker  .

clean:
	docker rmi truckpad/asterisk-docker

run:
	docker run --rm truckpad/asterisk-docker
	exit 0
