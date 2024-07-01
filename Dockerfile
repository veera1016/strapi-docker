# Use the official Node.js image as the base image
FROM node:18

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (or yarn.lock) to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Build the Strapi application
RUN npm run build

# Expose the port that Strapi will run on
EXPOSE 1337

# Start the Strapi server
CMD ["npm", "start"]

