# include npm as we have production dependency
FROM mhart/alpine-node:9 as BASE
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install --production
COPY ./src ./src

# test image installs development dependencies
# and runs testing commands
# derived from BASE
FROM BASE as TEST
# Copy files _from_ BASE
# To avoid accidentally creating different
# testing environment from production
COPY --from=BASE /app .
COPY .eslintrc.json .

RUN npm install
RUN npm run lint
RUN npm run test

# final production image uses base no NPM here
FROM mhart/alpine-node:base-9
COPY --from=BASE /app .

EXPOSE 1337
CMD ["node", "src/index.js"]