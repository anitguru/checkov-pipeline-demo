# Use a base image
FROM python:3.8

# Install Checkov using pip
RUN pip install checkov

# Set the entry point to Checkov
#ENTRYPOINT ["checkov"]

COPY iac_files /iac_files
RUN checkov -d ${{ IAC_FILES_PATH_PREFIX }}/iac_files --soft-fail

# Set the entry point to Checkov
ENTRYPOINT ["checkov"]
