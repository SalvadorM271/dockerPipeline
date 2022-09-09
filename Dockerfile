
FROM node:16

# Working dir
WORKDIR /usr/src/app

# Copy files from Build
COPY package*.json ./

# Install Files
RUN npm install 

# Copy SRC
COPY . .

# Open Port
EXPOSE 3000

# Docker Command to Start Service
CMD [ "node", "main.js" ]