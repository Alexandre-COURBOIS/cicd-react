FROM node:14-alpine 

# Add a work directory
WORKDIR /app
# Cache and Install dependencies
COPY package.json .
COPY package-lock.json .
RUN npm install
# Copy app files
COPY . .
# Start the app
CMD [ "npm", "start" ]
