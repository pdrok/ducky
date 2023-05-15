FROM node:18.12.1
# Create app directory
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .

EXPOSE 9005
CMD [ "npm", "start" ]