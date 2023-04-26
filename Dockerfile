# Base image
FROM python:3.9-slim-buster

# Install required modules
RUN apt-get update && apt-get install -y git python3 ffmpeg build-essential libpq-dev

# Set the working directory
WORKDIR /gdrive-bot

# Copy the bot files
COPY . .

# Install requirements with pip3
RUN pip3 install -r requirements.txt

# Set environment variables from .env file
ENV $(cat .env | xargs)

# Expose the port for the bot
EXPOSE 8080:80

# Start the bot
CMD ["python3", "-m", "bot"]
