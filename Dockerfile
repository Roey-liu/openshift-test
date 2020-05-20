FROM node:8.15.0
MAINTAINER RoeyLiu

# Create app directory
WORKDIR /usr/src/hello_test

# Install app dependencies
COPY package*.json ./

RUN npm install 

# Copy app files and build app
COPY . .

# ENV PORT 1111

EXPOSE 1111

CMD npm start