
# Use the official Python image as the base image
FROM python:3.8

# Set the working directory in the container
WORKDIR /filetolinkgenerator/app

# Copy the application files into the working directory
COPY . /filetolinkgenerator/app

# Install the application dependencies
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install --upgrade pip

# Define the entry point for the container
CMD ["python", "setup.py", "runserver", "0.0.0.0:8000"]

# Set the port for your app communications with Telegram servers.
# The container was not becoming healthy because it was trying to expose
# port 80 but the application was running on port 8000.
# Therefore, we need to change the exposed port to 8000.
EXPOSE 443/tcp
