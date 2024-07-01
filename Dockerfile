# Use the official Node.js image as the base image
FROM node:18

# Create and change to the app directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json from the subfolder
COPY strapi-project/package*.json ./

# Install npm dependencies
RUN npm install --legacy-peer-deps --verbose

# Copy the rest of the application code to the working directory
COPY strapi-project/ .

# Expose the application port
EXPOSE 1337

# Start the application
CMD ["npm", "start"]
