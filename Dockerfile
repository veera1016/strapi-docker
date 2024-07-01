# Use a separate builder image to install dependencies
FROM node:18-alpine AS builder

WORKDIR /app

# Copy the package.json and package-lock.json from the strapi-code directory
COPY strapi-project/package.json strapi-project/package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY strapi-project/ .

# Build the application (if necessary)
# RUN npm run build

# Create a minimal production image
FROM node:18-alpine

WORKDIR /srv/app

# Copy the node_modules and built files from the builder image
COPY --from=builder /app /srv/app

EXPOSE 1337

CMD ["npm", "start"]
