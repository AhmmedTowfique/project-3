FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install --production
COPY . .
COPY .env .env
EXPOSE 3003
CMD ["npm", "start"]
