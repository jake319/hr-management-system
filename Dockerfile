# Step 1: Use the official Node.js image as a base
FROM node:14

# Step 2: Set the working directory in the container
WORKDIR /usr/src/app

# Step 3: Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Step 4: Install the application dependencies
RUN npm install

# Step 5: Copy the rest of the application code to the container
COPY . .

# Step 6: Expose the port on which the app will run (Update if necessary)
EXPOSE 3000

# Step 7: Command to run the application
CMD ["npm", "start"]
