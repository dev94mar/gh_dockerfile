FROM debian:bullseye-slim

# Install any necessary dependencies
RUN apt-get update && apt-get install -y curl jq && rm -rf /var/lib/apt/lists/*

# Copy the entrypoint script
COPY entrypoint.sh /entrypoint.sh

# Ensure the script is executable
RUN chmod +x /entrypoint.sh

# Set the entrypoint
ENTRYPOINT ["/entrypoint.sh"]
