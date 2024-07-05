FROM node:18-alpine

WORKDIR /usr/src/app

# Install PM2 globally
RUN npm install -g pm2

# Copy the package.json and package-lock.json from the strapi-code directory
COPY strapi-project/package.json strapi-project/package-lock.json ./

# Install Strapi and dependencies
RUN npm install

# Copy the current directory contents into the container at /usr/src/app
COPY . .

RUN npm run build
# Expose the port that Strapi runs on
EXPOSE 1337

# Run Strapi with PM2
CMD ["npm", "start"]
