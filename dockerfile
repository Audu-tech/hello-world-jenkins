# Use Node.js base image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package files and install dependencies (including dev ones like Jest)
COPY package*.json ./
RUN npm install

# Copy the rest of the app
COPY . .

# Run tests
RUN npm test

# Expose the app port
EXPOSE 3000

# Start the app
CMD ["node", "app.js"]
