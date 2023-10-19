[![Maintained by An IT Guru](https://img.shields.io/badge/maintained_by-anit.guru-blue%20)](https://anit.guru)

# Checkov Pipeline Demo 

The purpose of this repository is to easily demonstrate how `checkov` can be used in a CI pipeline, we are using GitHub actions here.


## Setup:
* Create Action Secrets for `DOCKER_HUB_ACCESS_TOKEN` , `DOCKER_HUB_USERNAME` and `REPO_NAME`


## Demo Steps:

* Create a new release in this repository using the CLI or UI or trigger a build manually
* Go to Actions and review the CI process
* Show the output of `checkov`
* Visit the Security tab to demonstrate interoperability for the findings
* Clean up - delete the release created and associated tags if used
  

## Reference: https://github.com/bridgecrewio/checkov-action

Checkov can be added at the build or deploy phases of the application lifecycle.  Currently configured, checkov scans the Dockerfile and will [soft-fail](https://www.checkov.io/2.Basics/Hard%20and%20soft%20fail.html) (warn) before the build if doesn't meet scanning security requirements.  Alternatively, it can [hard-fail](https://www.checkov.io/2.Basics/Hard%20and%20soft%20fail.html) (stop) the build when the soft-fail option is removed.  Scan results echo to console within the runner and the findings are published to the Github Security tab _(https://github.com/anitguru/checkov-pipeline-demo/security/code-scanning)_.

## Shifting Further Left with Microsoft VS Code

* https://marketplace.visualstudio.com/items?itemName=Bridgecrew.checkov

https://github.com/anitguru/checkov-pipeline-demo/assets/93944901/14202345-6f85-4699-b0b8-116a81f1be7a
