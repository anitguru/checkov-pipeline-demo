# Wiz Container Demo

The purpose of this repository is to easily demonstrate how the `wizcli` can be used in a CI pipeline, we are using GitHub actions here.


## Setup:
* Generate a Wiz service account key documented [here](https://docs.wiz.io/wiz-docs/docs/set-up-wiz-cli#generate-a-wiz-service-account-key)
* Create Actions Secrets for `CLIENT_ID` and `CLIENT_SECRET`
* Create Action Secrets for `DOCKER_HUB_ACCESS_TOKEN` and `DOCKER_HUB_USERNAME`
* Update `/Users/tomfinch/github/wiz-container-demo/.github/workflows/main.yml` to reflect your dockerhub user.

## Demo Steps:

* Create a new release in this repository using the CLI or UI or trigger a build manually
* Go to Actions and review the CI process
* Show the output of `wizcli`
* Clean up - delete the release created and associated tags if used