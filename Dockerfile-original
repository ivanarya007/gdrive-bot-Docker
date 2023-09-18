# Base image
FROM python:3.9-slim-buster

# Install required modules and PostgreSQL
RUN apt-get update && apt-get install -y git python3 ffmpeg build-essential libpq-dev gettext postgresql-client

# Copy the bot files and .env file
COPY . .
COPY .env .

# Install requirements with pip3
RUN pip3 install -r requirements.txt && pip3 install python-dotenv

# Set environment variables from .env file
ENV $(cat /gdrive-bot/.env | xargs)

# If DATABASE_URL is not set, create it from individual environment variables
ENV DATABASE_URL=${DATABASE_URL:-postgresql://$DB_USER:$DB_PASS@$DB_HOST:$DB_PORT/$DB_NAME}

# Expose the port for the bot
EXPOSE 8080:80

# Start the PostgreSQL server
CMD service postgresql start && python3 -m bot
