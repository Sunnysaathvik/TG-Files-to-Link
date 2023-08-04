# Use the official Python image as the base image
FROM python:3.8

# Set the working directory in the container
WORKDIR /filetolinkgenerator

# Copy the application files into the working directory
COPY . /filetolinkgenerator

# Install the application dependencies
RUN pip install -r requirements.txt

# Define the entry point for the container
CMD ["python", "setup.py", "runserver", "0.0.0.0:8000"]

# Setting a port for your app communications with Telegram servers.
EXPOSE 80/tcp