FROM node:lts-alpine

WORKDIR /app

## UPDATE NPM
RUN npm install -g npm@latest

# install project dependencies
RUN npm install -g @vue/cli

# Get package files in memeory for CMD
COPY app/package*.json /app/

EXPOSE 8080
CMD npm run serve