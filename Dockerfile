FROM node:18.16.0-alpine3.17
RUN mkdir -p /opt/app
WORKDIR /opt/app
COPY src/package.json src/package-lock.json .
RUN npm install
COPY src/ .

#CMD [ "npm", "run", "migrate"]
CMD [ "npm", "run", "pm2-runtime"]

EXPOSE 3000
