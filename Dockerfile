# Build environment
FROM node:16.20.0-alpine


WORKDIR /app
# ENV PATH /app/node_modules/.bin:$PATH
COPY package.json ./
COPY package-lock.json ./

# Install dependend libraries and build the application
RUN npm ci
COPY . ./
RUN npm run build

EXPOSE 3000

# create script to generate settings.json for env variables and add script to docker-entrypoint
CMD ["npm", "start"]