FROM node:16-alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./
COPY tsconfig.json ./

#RUN npm install
# If you are building your code for production
#RUN npm ci --only=production
RUN npm install typescript ts-node express @types/express morgan @types/morgan axios @types/axios nodemon

# Bundle app source
COPY . .

EXPOSE 6060
CMD [ "npm", "run", "dev" ]


