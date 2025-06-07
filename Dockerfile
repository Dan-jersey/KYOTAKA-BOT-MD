FROM node:lts-buster
RUN git clone https://github.com/Dan-jerse/KYOTAKA-MD/root/Dan-jersey
WORKDIR /root/Dan-jersey
RUN npm install && npm install -g pm2 || yarn install --network-concurrency 1
COPY . .
EXPOSE 9090
CMD ["npm", "start"]
