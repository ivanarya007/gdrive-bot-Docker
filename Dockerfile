# Base image
FROM ubuntu:latest

# Install required modules
RUN apt-get update && \
    apt-get install -y git python3 python3-pip ffmpeg && \
    rm -rf /var/lib/apt/lists/*

# Clone git repository
RUN git clone https://github.com/ivanarya007/gdrive-bot.git

# Change directory
WORKDIR /gdrive-bot

# Copy .env file
COPY .env .

# Install requirements
RUN pip3 install -r requirements.txt

# Run command
CMD ["python3", "-m", "bot"]
