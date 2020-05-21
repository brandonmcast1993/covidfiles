
FROM python:3.7
# set a directory for the app
WORKDIR /usr/src/app
# copy all the files to the container
COPY . .
# install dependencies
RUN apt-get update
RUN apt-get install curl
RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
RUN curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list | tee /etc/apt/sources.list.d/msprod.list
RUN apt-get update
ENV ACCEPT_EULA=y DEBIAN_FRONTEND=noninteractive
RUN apt-get install -y gcc libc-dev g++ libffi-dev libxml2 mssql-tools unixodbc-dev
RUN pip install pyodbc
RUN pip install -r requirements.txt 

EXPOSE 5000

CMD ["python", "./web_page.py"] 
