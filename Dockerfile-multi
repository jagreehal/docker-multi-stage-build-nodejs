# base image with just our source files
FROM mhart/alpine-node:9 as BASE
WORKDIR /app
COPY package.json .
RUN yarn install --production
COPY ./src ./src

# test image installs development dependencies
# and runs testing commands
FROM BASE as TEST
RUN yarn
COPY .eslintrc.json .
RUN yarn run lint
RUN yarn run test

# final production image
FROM BASE as PROD
EXPOSE 1337
CMD ["node", "src/index.js"]