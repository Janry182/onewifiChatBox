FROM node:alpine

ENV HOME=/opt/intergram
RUN mkdir -p $HOME
WORKDIR $HOME

COPY . .

RUN npm install
RUN npm run build
CMD npm run start
EXPOSE 3000
