#FROM vulnerables/web-dvwa

FROM alpine:3.7 as build

# Run vulnerability scan on build image and fail the build if vulns are discovered
FROM build AS vulnscan
COPY --from=aquasec/trivy:latest /usr/local/bin/trivy /usr/local/bin/trivy
RUN trivy filesystem --exit-code 1 --no-progress --severity CRITICAL /
