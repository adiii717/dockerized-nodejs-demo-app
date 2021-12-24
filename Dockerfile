FROM node:alpine
WORKDIR /app
COPY app/package.json /app
RUN npm install
COPY app /app
EXPOSE 3000
CMD npm run start
