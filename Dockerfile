FROM nodered/node-red:2.2.0-12

COPY package.json /data/package.json
RUN cd /data && npm install --only=production

COPY settings.js /data/settings.js
COPY flows.json /data/flows.json

CMD ["npm", "start"]