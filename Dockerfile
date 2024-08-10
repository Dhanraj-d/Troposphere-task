FROM node:14-alpine
RUN apk add --no-cache libc6-compat
WORKDIR /app
COPY . .
RUN npm install
CMD npm start
