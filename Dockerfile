FROM node:18-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json from the strapi-project directory
COPY strapi-project/package.json strapi-project/package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code into the container
COPY strapi-project .

# Build the Strapi project
RUN npm run build

# Expose the port Strapi will run on
EXPOSE 1337

# Start Strapi
CMD ["npm", "start"]
