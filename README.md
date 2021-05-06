# Docker Deployer

Docker image to run [Deployer](https://deployer.org/) in a pipeline.

<https://hub.docker.com/r/jrobinsonc/deployer>

## Usage

Configure the SSH key in Bitbucket so Deployer can connect via SSH to the remote server: Repository settings > PIPELINES > SSH keys.

And you can start with this sample `bitbucket-pipelines.yml` that is deploying the stage `production` from the branch `production`:

```
image: jrobinsonc/deployer

pipelines:
  branches:
    production:
      - step:
          deployment: production
          script:
            - dep deploy production
```

In case you need port 22 only open for whitelisted IPs, you can [read here](https://support.atlassian.com/bitbucket-cloud/docs/what-are-the-bitbucket-cloud-ip-addresses-i-should-use-to-configure-my-corporate-firewall/#Valid-IP-addresses-for-Bitbucket-Pipelines-build-environments) to know the IPs used by the build environment from Bitbucket.
