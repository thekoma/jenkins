# Jenkins Container Image

[![Docker Repository on Quay](https://quay.io/repository/marcocaimi/jenkins/status "Docker Repository on Quay")](https://quay.io/repository/marcocaimi/jenkins)

This repo contains the Dockerfile that is used to build my custom Jenkins container image that is hosted on [Quay.io](https://quay.io/repository/marcocaimi/jenkins)
This is based on the latest official Jenkins Image with some added features already baked in:

 * Various plugins are already embedded in the image
 * Configuration-as-Code supported for Helm-based deployments

## Included plugins

These plugins are included in this image:

 * Blueocean
 * Nexus3 Artifact Uploader
 * SonarQube Scanner
 * Kubernetes Plugin
 * Openshift Plugin
 * JaCoCo plugin
 * Configuration-as-Code plugin


