# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container to /app
WORKDIR /app

# Copy the necessary files into the container at /app
COPY index.html /app/index.html
COPY index.js /app/index.js

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Define environment variable
ENV NAME World

# Run python3 -m http.server 8000 when the container launches
CMD ["python3", "-m", "http.server", "8000"]
