# Stage 1: Build the application
FROM node:18-alpine AS builder

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and yarn.lock files
COPY . .

RUN yarn install
# Build your application
RUN yarn build

ENTRYPOINT [ "yarn", "run", "start:prod" ]