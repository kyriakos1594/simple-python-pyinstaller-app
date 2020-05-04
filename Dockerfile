#Main OS image pulled from docker. First layer
FROM python:3.6

#Run updates
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install git
RUN git clone https://kyriakos1594:gaiden1594@github.com/kyriakos1594/emie.git

#Intsall python and mysql
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install python3.6
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install python3-pip
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install mysql-server
RUN DEBIAN_FRONTEND=noninteractive apt-get -y -f install mysql-client

#Expose port
EXPOSE 3306

#Entrypoint - Services need an etrypoint to run
ENTRYPOINT service mysql start && bash

WORKDIR /emie

RUN pip3 install -r requirements.txt
#python3 emie/deploy/deploy_hedgner.py && bash
#ENTRYPOINT python3 emie/deploy/deploy_hedgner.py

#Run deploy python script 
#RUN python3 ./emie/deploy/deploy_hedgner.py

#Run deploy script to create dependecies, databases and users
#RUN python3 deploy/deploy_hedgner.py
