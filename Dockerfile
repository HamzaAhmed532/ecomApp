# using node 14 version
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Run the build script
RUN npm run build

# Expose the port on which your app runs
EXPOSE 3000

# Command to run your application
CMD ["npm", "run", "dev"]