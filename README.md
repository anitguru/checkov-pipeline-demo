# Trivy Container Demo

The purpose of this repository is to easily demonstrate how `trivy` can be used in a CI pipeline, we are using GitHub actions here.


## Setup:
* Create Action Secrets for `DOCKER_HUB_ACCESS_TOKEN` and `DOCKER_HUB_USERNAME`


## Demo Steps:

* Create a new release in this repository using the CLI or UI or trigger a build manually
* Go to Actions and review the CI process
* Show the output of `Trivy`
* Clean up - delete the release created and associated tags if used
  

## Reference: https://www.aquasec.com/products/trivy/

Trivy can be added at different phases of a build.  Currently configured, it's within the Dockerfile to stop a build if doesn't meet scanning security requirements.  Alternatively, it can scan after the Docker image is created and its telemetry published to the Github Security tab.
