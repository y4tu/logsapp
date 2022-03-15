FROM node

WORKDIR /app

COPY package.json /app

RUN npm install

COPY . .

ENV PORT 80

EXPOSE $PORT

VOLUME [ "/app/data" ]

CMD [ "node", "app.js" ]
