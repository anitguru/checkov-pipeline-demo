#FROM vulnerables/web-dvwa
#FROM alpine:3.7 as build
FROM alpine:latest as build

# Run vulnerability scan on build image and fail the build if vulns are discovered
FROM build AS vulnscan
COPY --from=bridgecrew/checkov:latest /usr/local/bin/checkov /usr/local/bin/checkov
RUN /usr/local/bin/checkov -v
