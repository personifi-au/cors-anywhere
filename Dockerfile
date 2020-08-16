FROM node:14-alpine

WORKDIR /app
COPY package.json .
ENV NODE_ENV production
RUN npm i --only=production
COPY . .
EXPOSE 8080
ENTRYPOINT ["/usr/local/bin/npm"]
CMD ["start"]
