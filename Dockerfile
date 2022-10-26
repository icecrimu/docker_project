FROM node:19-alpine3.15
RUN mkdir -p /var/www/app
WORKDIR /var/www/app
COPY . .
RUN npm install
RUN npm install nodemon -g
EXPOSE 8080
CMD ["npm", "start"]