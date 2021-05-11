FROM node:12

# create app directory
WORKDIR /usr/src/app

# installing dependencies
# symbol ("*") is used to make possible
# copy both files: package.json and package-lock.json
COPY package*.json ./

RUN npm install
# If you are creating a production assembly
# RUN npm ci --only=production

# copy the source code
COPY .. .

EXPOSE 8080
CMD [ "node", "server.js" ]