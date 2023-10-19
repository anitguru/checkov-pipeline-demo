# checkov reference: https://www.checkov.io/7.Scan%20Examples/Dockerfile.html
  # checkov:skip=CKV_DOCKER_2: ADD REASON
  # checkov:skip=CKV_DOCKER_3: ADD REASON

# httpd reference: https://www.docker.com/blog/how-to-use-the-apache-httpd-docker-official-image/
FROM httpd:2.4
LABEL maintainer="Steve VanAllen <steve@vanallen.family>"
LABEL description="This example Dockerfile installs apache."
COPY ./public-html/ /usr/local/apache2/htdocs/
