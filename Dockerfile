FROM ubuntu:trusty

RUN apt update && apt upgrade -y && apt install -y build-essential python3-pip chrpath python libmysqlclient-dev && rm -rf /var/lib/apt/lists/* 
RUN pip3 install nuitka==0.5.27
WORKDIR /src
CMD nuitka
