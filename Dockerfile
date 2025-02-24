# specify the node base image with your desired version node:<version>
FROM node:20.11.0
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . /app

# replace this with your application's default port
EXPOSE 3000
CMD ["node", "index.js"]