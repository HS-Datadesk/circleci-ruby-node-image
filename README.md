# Docker image containing Ruby and Node

This is a docker image containing Ruby and Node. It is used in build process when deploying HS Datadesk applications to production using CircleCI.

Build this by using: 'docker build -t datadesk/circleci_node_ruby:2.3.5-8.9.4 .' (change versions)

docker push datadesk/circleci_node_ruby:2.3.5-8.9.4

# Updating Ruby and Node versions

If you need to update Ruby and/or Node versions of this image, follow these instructions.

Example: Changing to version Ruby `2.5.0` and Node `10.15.3`

1. Update version numbers in Dockerfile. Please use LTS versions

1a. Change `FROM circleci/ruby:2.5.0`
1b. Change `ENV NODE_VERSION="10.15.3"`

2. Run `docker build -t datadesk/circleci_node_ruby:2.5.0-10.15.3 .`

3. Run `docker push datadesk/circleci_node_ruby:2.5.0-10.15.3`




