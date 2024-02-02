FROM node:18.18.2-slim
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
COPY ./dist ./dist
CMD ["npm", "run", "start:dev"]