# Dockerfile
FROM node:alpine

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

COPY package.json ./
COPY package-lock.json ./

RUN npm install --silent
RUN npm install react-scripts@5.0.1 -g --silent

COPY . ./

# Expose port 3000
EXPOSE 3000

CMD ["npm", "start"]
