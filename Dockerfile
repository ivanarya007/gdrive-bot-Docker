# Base image
FROM python:3.9-slim-buster

# Install dependencies
RUN apt-get update && apt-get install -y git python3 ffmpeg build-essential libpq-dev postgresql-client

# Copy source code
COPY . .

# Install requirements
RUN pip3 install -r requirements.txt

# Set environment variables 
ENV BOT_TOKEN=BOT_TOKEN_VALUE
ENV APP_ID=APP_ID_VALUE
ENV API_HASH=API_HASH_VALUE
ENV SUDO_USERS=
ENV SUPPORT_CHAT_LINK=
ENV DOWNLOAD_DIRECTORY=./downloads/
ENV G_DRIVE_CLIENT_ID=G_DRIVE_CLIENT_ID_VALUE
ENV G_DRIVE_CLIENT_SECRET=G_DRIVE_CLIENT_SECRET_VALUE  
ENV DATABASE_URL=postgresql://myuser:mypassword@postgres:5432/postgres

# Expose port
EXPOSE 8080:80 

# Start bot
CMD ["python3", "-m", "bot"]
