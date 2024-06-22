# Use an official Node.js runtime as a parent image
FROM node:20

# Set the working directory in the container
WORKDIR /app

# Install necessary system dependencies
RUN apt-get update \
    && apt-get install -y curl gnupg2 \
    && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs \
    && npm install -g yarn \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install PM2 globally
RUN npm install -g pm2

# Clone Strapi project
RUN yes | npx create-strapi-app@latest my-strapi-project --quickstart --skip-cloud --no-run

# Set the working directory to the Strapi project
WORKDIR /app/my-strapi-project

# Expose the port that Strapi runs on (default is 1337)
EXPOSE 1337

# Start Strapi using PM2
CMD ["pm2-runtime", "npm", "--", "run", "develop"]
