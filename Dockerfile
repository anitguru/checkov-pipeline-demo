# Using httpd 2.4 base image
FROM httpd:2.4

# Metadata as described by the label schema convention
LABEL maintainer="Steve VanAllen <steve@vanallen.family>"
LABEL description="This example Dockerfile installs node."
MAINTAINER Steve VanAllen <steve@vanallen.family>

# Set the working directory
WORKDIR /usr/local/apache2

# Modify permissions to run as non-root user
RUN chown -R www-data:www-data htdocs logs

# Add ServerName directive to suppress warning and add content
RUN echo "ServerName localhost" >> /usr/local/apache2/conf/httpd.conf

COPY ./public-html/ /usr/local/apache2/htdocs/

# Switch to non-root user for remaining operations
USER www-data

# Start apache in the foreground
CMD ["httpd-foreground"]

# Health check command
HEALTHCHECK CMD curl --fail http://localhost:80 || exit 1
