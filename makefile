
build:
	sudo docker build -t mail_server:latest .

run:
	sudo docker run -it -d -p 25:25 -p 110:110 -p 143:143 --name mail_container --rm mail_server:latest 

