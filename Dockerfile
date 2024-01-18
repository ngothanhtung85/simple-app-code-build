# FROM --platform=linux/amd64 node:16
FROM public.ecr.aws/amazonlinux/amazonlinux:latest

#create app directory
WORKDIR /app

# install dependencies 
# A Wildcard to make sure that we will copy both package.json and package-lock.json
COPY package*.json /app/

RUN npm install

# Bundle app source
COPY . . 

EXPOSE 8080
CMD ["npm", "start"]