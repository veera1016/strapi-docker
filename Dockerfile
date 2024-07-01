# Use the official Node.js image as the base image
FROM node:18

# Create and change to the app directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install npm dependencies with verbose logging and additional error handling
RUN npm install -g npm@latest \
    && npm cache clean --force \
    && npm install --legacy-peer-deps --verbose || cat /usr/src/app/npm-debug.log || true

# Copy the rest of the application code to the working directory
COPY . .

# Expose the application port
EXPOSE 1337

# Start the application
CMD ["npm", "start"]
