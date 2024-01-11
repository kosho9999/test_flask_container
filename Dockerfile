# Set base image (host OS)
FROM python:3.10.13-slim

#Update OS
RUN apt-get update && apt-get upgrade -y

# Set the working directory in the container
WORKDIR /app

# Copy the dependencies file to the working directory
COPY requirements.txt .

# Install any dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Copy the content of the local src directory to the working directory
COPY app.py .

# By default, listen on port 5000
EXPOSE 5000/tcp

# Specify the command to run on container start
CMD [ "python", "./app.py" ]