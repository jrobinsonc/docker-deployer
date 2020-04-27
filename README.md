# Docker Deployer

Docker image to run [Deployer](https://deployer.org/) in a pipeline.

## Usage

In `bitbucket-pipelines.yml`. This example is deploying the branch master to the production server each time there is a new commit.

```
image: jrobinsonc/deployer

pipelines:
  branches:
    master:
      - step:
          deployment: production
          caches:
            - composer
          script:
            - dep deploy master
```
