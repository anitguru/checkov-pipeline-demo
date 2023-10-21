# checkov reference: https://www.checkov.io/7.Scan%20Examples/Dockerfile.html
# httpd reference: https://www.docker.com/blog/how-to-use-the-apache-httpd-docker-official-image/
FROM httpd:2.4
LABEL maintainer="Steve VanAllen <steve@vanallen.family>"
LABEL description="This example Dockerfile installs apache."
#COPY ./public-html/ /usr/local/apache2/htdocs/
#RUN echo "Hello World" > /usr/local/apache2/htdocs/index.html
RUN <<-"EOF"
	set -x
	echo "do some things" > /usr/local/apache2/htdocs/index.html \n
	echo "do more things" >> /usr/local/apache2/htdocs/index.html \n
	echo "do more things" >> /usr/local/apache2/htdocs/index.html
EOF
# The compliance framework that typically includes the requirement for
# containers to run as a non-root user is the Center for Internet Security (CIS) Docker Benchmark
HEALTHCHECK CMD curl --fail http://localhost:8080 || exit 1
