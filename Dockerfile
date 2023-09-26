# Use a base image
FROM debian:9.5-slim

# Install Checkov using pip
#RUN pip install checkov

# Set the entry point to Checkov
#ENTRYPOINT ["checkov"]

ENTRYPOINT ["echo $GITHUB_SHA"]
