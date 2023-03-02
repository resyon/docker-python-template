install:
	chmod +x docker_install.sh && ./docker_install.sh

build:
	docker build -t reashal .
	docker run -it -p 5000:5000 --name reashal  reashal 

run:
	echo "Press Ctrl-C to stop"
	docker run reashal

clean:
	docker rm -f reashal