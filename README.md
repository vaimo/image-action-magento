# Docker image with coding standards

**Author:** Patryk Waluś (patryk.walus@vaimo.com)

## Supported versions
- 2.4.3-v1
  - PHP 7.4, Composer 2.1
- 2.4.4-v1
  - PHP 8.1, Composer 2.2
- 2.4.5-v1
  - PHP 8.1, Composer 2.2
- 2.4.6-v1
  - PHP 8.2, Composer 2.2

## Description
Docker image that contains:
- php7/8
- composer v2
- code sniffer
- phpmd

The intended use of this image is to serve as a container within github actions, specifically designed for executing workflow jobs.

## Usage

In the docker image, you will find a directory called `/var/www/coding-standards`.
This directory contains all the essential tools for coding quality.
You can use this image in your project workflows to run code-sniffer, mess-detector, and tests.
Additionally, it should be configured in PHPStorm so that coding standards can be applied during development.

## Maintaining

### How to build?

Before you publish a new version, it's a good idea to first try building it on your own computer and test if it works.

To build this image, simply use this command:

```shell
docker build -t vaimo/image-action-magento .
```

### How to publish?

Once the image is functioning properly, you can proceed to push the changes to the release/{tag} branch. The GitHub workflow will then build this image and publish it to the Github registry with a release-{tag} version. This particular version can be utilized for beta testing purposes, prior to requesting an update for project workflows with the new version.  

If the new docker image is approved, create a tag in the release branch and push it. This will create a ready-to-use image.
