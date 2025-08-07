FROM debian:latest

# Create the directory for /scripts

RUN mkdir -p /scripts

# Copy update_clean.sh script (with full directory path)

COPY scripts/update_clean.sh /scripts/update_clean.sh
RUN chmod +x /scripts/update_clean.sh

# Copy update_install.sh script (with full directory path)

COPY scripts/update_install.sh /scripts/update_install.sh
RUN chmod +x /scripts/update_install.sh

# Define the directory inside the container

WORKDIR /workspace

# Define the entrypoint with shell scripting (bash)

ENTRYPOINT ["/bin/bash", "-c", "/scripts/update_clean.sh && /scripts/update_install.sh && /scripts/update_clean.sh"]