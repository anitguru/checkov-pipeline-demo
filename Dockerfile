# Use a base image
FROM debian:9.5-slim

# Install Checkov using pip
RUN pip install checkov

# Set the entry point to Checkov
#ENTRYPOINT ["checkov"]

COPY iac_files /iac_files
RUN checkov -d /iac_files

#ENTRYPOINT ["echo $GITHUB_SHA"]
