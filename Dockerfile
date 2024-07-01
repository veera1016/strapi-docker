# Use the official Node.js image as a parent image
FROM node:18

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the Strapi application (if applicable)
RUN npm run build

# Expose the port on which Strapi runs
EXPOSE 1337

# Define the command to run your app
CMD ["npm", "start"]
