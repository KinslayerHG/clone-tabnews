# Use a specific Node.js version
FROM node:19.5.0-alpine

# Set the working directory
WORKDIR /app

# Copy only necessary files
COPY package.json ./
COPY package-lock.json ./

# Install dependencies
RUN npm ci --only=production

# Copy the rest of the application
COPY . .

# Build the application
RUN npm run build

# Expose the port
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]
