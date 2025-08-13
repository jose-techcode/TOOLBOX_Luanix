# Use an official Debian image

FROM debian:latest

# Create the directory for /scripts

RUN mkdir -p /scripts

# Copy update_clean.sh script (with full directory path)

COPY scripts/update_clean.sh /scripts/update_clean.sh
RUN chmod +x /scripts/update_clean.sh

# Define the directory inside the container

WORKDIR /workspace

# Define the entrypoint with shell scripting (bash) and run test scripts in docker container

ENTRYPOINT ["/bin/bash", "-c", "/scripts/update_clean.sh"]