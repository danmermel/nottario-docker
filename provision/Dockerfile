# Use an official Node runtime as a parent image
FROM node:8

# Set the working directory
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /app
COPY nottariofiat/backend/* /usr/src/app/

RUN npm install


# Run app.py when the container launches
CMD ["node", "cron-readqueue.js"]
