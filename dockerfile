# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory in the container to /app
WORKDIR /app

# Copy the necessary files into the container at /app
COPY index.html /app/index.html
COPY index.js /app/index.js
COPY style.css /app/style.css
COPY start_server.py /app/start_server.py

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Define environment variable for URL prefix, default is empty
ENV URL_PREFIX=

# Run the custom Python script to start the server
CMD ["python3", "start_server.py"]
