FROM node:18-alpine

WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package.json package-lock.json ./

# Install Strapi and dependencies
RUN npm install --legacy-peer-deps

# Copy the current directory contents into the container at /usr/src/app
COPY . .

RUN npm run build
# Expose the port that Strapi runs on
EXPOSE 1337

# Run Strapi with PM2
CMD ["pm2-runtime", "start", "npm", "--", "start"]
