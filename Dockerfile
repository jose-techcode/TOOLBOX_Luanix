# Use an official Debian image

FROM debian:latest

# Create the directory for /scripts

RUN mkdir -p /scripts

# Copy update_clean.sh script

COPY scripts/update_clean.sh /scripts/update_clean.sh
RUN chmod +x /scripts/update_clean.sh

# Copy files_organization.sh script

COPY scripts/files_organization.sh /scripts/files_organization.sh
RUN chmod +x /scripts/files_organization.sh

# Copy files_backup.sh script

COPY scripts/files_backup.sh /scripts/files_backup.sh
RUN chmod +x /scripts/files_backup.sh

# Define the directory inside the container

WORKDIR /workspace

# Define the entrypoint with shell scripting (bash) and run test scripts in docker container

ENTRYPOINT ["/bin/bash", "-c", "/scripts/update_clean.sh && /scripts/files_organization.sh && /scripts/files_backup.sh"]