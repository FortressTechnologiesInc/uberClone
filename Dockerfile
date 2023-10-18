# Use the official Node.js LTS image as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and yarn.lock files to the container
COPY package.json yarn.lock ./

# Install application dependencies
RUN yarn install

# Copy the rest of your application files to the container
COPY babel.config.js app.json App.js ./

# Copy the assets.json file to the container
COPY assets.json ./

# Set the environment variable for your Google Maps API Key
ENV GOOGLE_MAPS_APIKEY=AIzaSyBQivdVNxU7quHhW_ARw2VuXKmHVwXhNMk

# Expose the port your application will run on (if applicable)
# EXPOSE 3000

# Define the command to start your application
CMD ["node", "App.js"]
