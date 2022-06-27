FROM node:16.14.0-alpine

WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install --only=production
COPY ./src ./src
# CMD npm install --only=production && \
#     npm start
CMD npm start
