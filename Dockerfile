# node:19-alpine3.16 image 

FROM node:19-alpine3.16

# Dir for the Docker image
WORKDIR /react-app

# Copy dependencies
COPY package.json .
COPY package-lock.json .

# install all the React.js application dependencies
RUN npm i
<!-- Copy the remaining React.js application folders and files from 
 the `jenkins-kubernetes-deployment` local folder to the Docker 
react-app working directory -->
COPY . .

# Port 3000
EXPOSE 3000

# Command to start 
CMD ["npm", "start"]