FROM node
RUN mkdir /use/src/app
WORKDIR /use/src/app
ENV PATH /use/src/app/node_modules/.bin:$PATH
COPY package*.json /use/src/app
RUN npm install
COPY . /use/src/app
EXPOSE 4000
CMD ["npm","start"]
