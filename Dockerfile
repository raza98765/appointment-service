
FROM node:18

WORKDIR /usr/src/app


COPY package*.json ./

RUN npm install


COPY . .

# Expose the port the app runs on
EXPOSE 80

# Define the command to run the application
CMD ["npm", "start"]
