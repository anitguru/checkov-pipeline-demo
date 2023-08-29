# Trivy Container Demo

The purpose of this repository is to easily demonstrate how `trivy` can be used in a CI pipeline, we are using GitHub actions here.


## Setup:
* Create Action Secrets for `DOCKER_HUB_ACCESS_TOKEN` and `DOCKER_HUB_USERNAME`


## Demo Steps:

* Create a new release in this repository using the CLI or UI or trigger a build manually
* Go to Actions and review the CI process
* Show the output of `trivy`
* Clean up - delete the release created and associated tags if used
