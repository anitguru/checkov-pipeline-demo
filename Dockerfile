# Use a base image
FROM python:3.8

# Install Checkov using pip
RUN pip install checkov

# Set the entry point to Checkov
#ENTRYPOINT ["checkov"]

RUN cat /github/workspace/README.md
