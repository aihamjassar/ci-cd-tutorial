FROM node:18-slim

WORKDIR /app

COPY package*.json .

RUN npm install -f --only=production

COPY . .

EXPOSE 5001

CMD ["npm", "start"]