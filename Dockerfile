#stage 1 as build
#base as as node
FROM node:18 AS build

#wroking directory
WORKDIR /app

#copy the packages
COPY package*.json

#install the dependices
RUN npm install

#copy the files
COPY . . 

#stage 2  build
FROM node:18-slim 

#working directory
WORKDIR /app

#copy from the  builder
COPY --from=build /app /app

#command
CMD ["node", "index.js"]
