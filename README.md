[![Maintained by An IT Guru](https://img.shields.io/badge/maintained_by-anit.guru-blue%20)](https://anit.guru)

# Checkov Pipeline Demo 

The purpose of this repository is to easily demonstrate how `checkov` can be used in a CI pipeline, we are using GitHub actions here.


## Setup:
* Create Action Secrets for `DOCKER_HUB_ACCESS_TOKEN` and `DOCKER_HUB_USERNAME`


## Demo Steps:

* Create a new release in this repository using the CLI or UI or trigger a build manually
* Go to Actions and review the CI process
* Show the output of `bridgecrew`
* Visit the Security tab to demonstrate interoperability for the findings
* Clean up - delete the release created and associated tags if used
  

## Reference: https://github.com/bridgecrewio/checkov-action

checkov can be added at different phases of a build.  Currently configured, it's within the Dockerfile to stop a build if doesn't meet scanning security requirements.  Alternatively, it can scan after the Docker image is created and its telemetry published to the Github Security tab _(https://github.com/anitguru/checkov-pipeline-demo/security/code-scanning)_.
