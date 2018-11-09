
build:
	sudo docker build -t mail_server:latest .

run:
	sudo docker run -it -p 25:25 -p 110:110 -p 143:143 --hostname=work-soc00.com --name mail_container mail_server:latest /bin/bash

