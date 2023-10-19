
# checkov reference: https://www.checkov.io/7.Scan%20Examples/Dockerfile.html
# httpd reference: https://www.docker.com/blog/how-to-use-the-apache-httpd-docker-official-image/
FROM httpd:2.4
LABEL description="This example Dockerfile installs apache."
MAINTAINER Steve VanAllen <steve@vanallen.family>
COPY ./public-html/ /usr/local/apache2/htdocs/
