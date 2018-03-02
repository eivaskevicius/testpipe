# Docker Image to start with 
FROM node:carbon

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

# Map the port used by docker daemon
EXPOSE 3000

CMD [ "npm", "start" ]