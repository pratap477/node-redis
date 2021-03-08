# Step 1 -> specify  base image

FROM node:alpine

# set work directory inside docker
WORKDIR /node-kub

# copy package.json to install npm dependency
COPY package.json .

# Install npm dependencies
RUN npm install

# 
COPY . . 

# allow to access outside docker
EXPOSE 8080

CMD ["npm", "start"]