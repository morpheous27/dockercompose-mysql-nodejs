FROM node:12-alpine
WORKDIR /app
COPY . .
ENV MYSQL_HOST=mysql
ENV MYSQL_USER=root
ENV MYSQL_PASSWORD=password
ENV MYSQL_DB=todo-db
RUN yarn install --production
CMD ["node", "src/index.js"]