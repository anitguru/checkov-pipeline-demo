[![Maintained by An IT Guru](https://img.shields.io/badge/maintained_by-anit.guru-blue%20)](https://anit.guru)

# Checkov Pipeline Demo 

This repository showcases how to integrate `checkov` within a CI pipeline using GitHub Actions.

## Setup

1. Define Action Secrets for the following:
   - `DOCKER_HUB_ACCESS_TOKEN`
   - `DOCKER_HUB_USERNAME`
   - `REPO_NAME`

## Demo Steps

1. Initiate a new release in this repository via CLI, UI, or manually trigger a build.
2. Navigate to Actions to observe the CI process in action.
3. Inspect the `checkov` output.
4. Explore the Security tab to see how findings integrate seamlessly.
5. Cleanup: Ensure you delete the newly created release and any associated tags.

## Checkov in the Application Lifecycle

[Checkov](https://github.com/bridgecrewio/checkov-action) can be employed during either the build or deploy phases. In the current configuration, `checkov` analyzes the Dockerfile and will [soft-fail](https://www.checkov.io/2.Basics/Hard%20and%20soft%20fail.html) (warn) before the build if it does not satisfy security criteria. However, by removing the soft-fail option, it can be configured to [hard-fail](https://www.checkov.io/2.Basics/Hard%20and%20soft%20fail.html) (halt the build). The scan outcomes are displayed within the runner console, and findings are documented in the Github Security tab: [See Findings](https://github.com/anitguru/checkov-pipeline-demo/security/code-scanning).

## Shifting Even Further Left: Checkov Plugin for Microsoft VS Code

For developers aiming to integrate security earlier in the development process, consider the [Checkov plugin for Microsoft VS Code](https://marketplace.visualstudio.com/items?itemName=Bridgecrew.checkov).

https://github.com/anitguru/checkov-pipeline-demo/assets/93944901/14202345-6f85-4699-b0b8-116a81f1be7a
