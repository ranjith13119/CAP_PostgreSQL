FROM node:12.18.1

RUN apt-get update && apt-get install -y \
  default-jre \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install

COPY . .

CMD [ "npm", "start" ]

EXPOSE 4004