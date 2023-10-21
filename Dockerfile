# Using httpd 2.4 base image
FROM httpd:2.4

# Metadata as described by the label schema convention
LABEL maintainer="Steve VanAllen <steve@vanallen.family>" \
      description="This example Dockerfile installs apache."

# Set the working directory
WORKDIR /usr/local/apache2

# Modify permissions to run as non-root user and add content
RUN chown -R www-data:www-data htdocs logs && \
    echo "ServerAlias localhost" >> /usr/local/apache2/conf/httpd.conf && \
    bash -c 'cat > /usr/local/apache2/htdocs/index.html' <<EOL
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

# Switch to non-root user for remaining operations
USER www-data

# Start apache in the foreground
CMD ["httpd-foreground"]

# Health check command
HEALTHCHECK CMD curl --fail http://localhost:80 || exit 1
