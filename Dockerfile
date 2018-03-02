# Docker Image to start with 
FROM node:alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY sbalpi*.tgz ./

RUN npm install sbalpi*.tgz
RUN mv node_modules node
RUN mv node/sbalpi/* .

# Bundle app source
COPY . .

# Map the port used by docker daemon
EXPOSE 3000

CMD [ "npm", "start" ]