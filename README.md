# CICD
This repository contains templates for Continues Integration and Continous Deployment for Azure DevOps pipelines. GitHub Actions are planned to follow soon.
More information on Azure DevOps templates can be found [here](https://docs.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops#use-other-repositories)

## .Net Core CI template
The [dontnet-ci-template.yml](dotnet-ci-template.yml) provides a template for an Azure DevOps pipeline that builds, tests and publishes .Net Core project(s).
Therefore it mainly uses the [.Net Core CLI task](https://docs.microsoft.com/en-us/azure/devops/pipelines/tasks/build/dotnet-core-cli?view=azure-devops) for the related steps.

## NPM CI template
The [npm-ci-template.yml](npm-ci-template.yml) provides a template for an Azure DevOps pipeline that builds, tests and publishes NPM project(s).
Therefore it mainly uses the [NPM task](https://docs.microsoft.com/en-us/azure/devops/pipelines/tasks/package/npm?view=azure-devops) for the related steps.

## How to create GitHub releases via Azure DevOps task
https://docs.microsoft.com/en-us/azure/devops/pipelines/tasks/utility/github-release?view=azure-devops
