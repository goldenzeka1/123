FROM node:latest

WORKDIR /app
FROM mcr.microsoft.com/playwright:v1.34.0-jammy
COPY package.json ./
RUN npm install
RUN npx playwright install

COPY . .
CMD ["npx", "playwright", "test"]
