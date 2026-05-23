# Use official Node.js 20 slim image
FROM node:20-slim

# Create and set working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json if it exists
COPY package*.json ./

# Install only production dependencies
RUN npm install --omit=dev

# Copy the rest of the app source code
COPY . .

# Cloud Run sets PORT=8080 automatically
ENV PORT=8080
EXPOSE 8080

# Start the app
CMD [ "node", "index.js" ]