# [Jibi] changing to alpine image as it would reduce image size significantly.
# [Jibi] Image with node:14 is around 948 MB and with alpine it's 120 MB

FROM node:14-alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json /usr/src/app

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
# [Jibi] always good practice to copy invidual files rather than blidly copy everything in the directory.
COPY server.js /usr/src/app/

EXPOSE 8080

CMD [ "node", "server.js" ]

