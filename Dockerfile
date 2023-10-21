# checkov reference: https://www.checkov.io/7.Scan%20Examples/Dockerfile.html
# httpd reference: https://www.docker.com/blog/how-to-use-the-apache-httpd-docker-official-image/
# The compliance framework that typically includes the requirement for
# containers to run as a non-root user is the Center for Internet Security (CIS) Docker Benchmark

FROM httpd:2.4

LABEL maintainer="Steve VanAllen <steve@vanallen.family>"
LABEL description="This example Dockerfile installs apache."

# Set the working directory
WORKDIR /usr/local/apache2

# Modify the directory permissions to allow access for www-data
RUN chown -R www-data:www-data htdocs

# Add a multi-line index.html to the apache root directory
RUN bash -c 'cat > /usr/local/apache2/htdocs/index.html' <<EOL
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>An IT Guru ASCII</title>
</head>
<body style="font-family: monospace; text-align: center; background-color: #f9f9f9; padding-top: 50px;">
    <pre>
  ##     ###  ##             ####   #### ##            ## ##   ##  ###  ### ##   ##  ###  
   ##      ## ##              ##    # ## ##           ##   ##  ##   ##   ##  ##  ##   ##  
 ## ##    # ## #              ##      ##              ##       ##   ##   ##  ##  ##   ##  
 ##  ##   ## ##               ##      ##              ##  ###  ##   ##   ## ##   ##   ##  
 ## ###   ##  ##              ##      ##              ##   ##  ##   ##   ## ##   ##   ##  
 ##  ##   ##  ##              ##      ##              ##   ##  ##   ##   ##  ##  ##   ##  
###  ##  ###  ##             ####    ####              ## ##    ## ##   #### ##   ## ##   
    </pre>
</body>
</html>
EOL

# Modify the directory permissions to allow access for www-data, this time as root
RUN chown -R www-data:www-data htdocs && \
    chown -R www-data:www-data logs/

# Switch to the non-root user for the remaining operations
USER www-data

# Start apache in the foreground
CMD ["httpd-foreground"]

HEALTHCHECK CMD curl --fail http://localhost:8080 || exit 1
