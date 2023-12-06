FROM ubuntu:18.04
RUN apt-get update 
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nodejs npm 
WORKDIR /app
ADD . /app
RUN npm install
EXPOSE 3000
CMD ["npm" , "run" ,"start:dev"]
