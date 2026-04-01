FROM node:alpine

# Create the directory and set it as the working directory
WORKDIR /var/www

# Copy the package.json first to take advantage of Docker caching
COPY package.json .

# Install dependencies
RUN npm install

# Copy the rest of your code (like index.js)
COPY . .

# The port your app runs on (based on your code earlier)
EXPOSE 3000

# The command to start your app
CMD ["node", "index.js"]
