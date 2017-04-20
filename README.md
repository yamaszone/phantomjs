[![CircleCI](https://circleci.com/gh/yamaszone/phantomjs.svg?style=svg)](https://circleci.com/gh/yamaszone/phantomjs)

# PhantomJS Docker Container
Minimal [PhantomJS](https://github.com/ariya/phantomjs) Docker container using official [Node](https://hub.docker.com/_/node/) base.

## Prerequisites
1. Docker installed in your environment

## User Guide
- Copy the [shell script](https://github.com/yamaszone/phantomjs/blob/master/phantomjs) `phantomjs` from project root to `/usr/local/bin` or `/opt/bin` (CoreOS)
  - `phantomjs` above uses `yamaszone/phantomjs:latest` as the default image. If you need specific CLI version, see [available tags](https://hub.docker.com/r/yamaszone/phantomjs/tags/).

## Developer Guide
- Project root contains a convenient `run` [script](https://github.com/yamaszone/phantomjs/blob/master/run) to help performing typical tasks for developer workflow (e.g. build image, setup test framework to test image, run tests, etc.)
```sh
$ ./run help
Usage:
         cba | configure-bats-assert    : Configure bats-assert library (first-time only).
         stf | setup-test-framework     : Setup test framework (first-time only).
         build                          : Build image with the given tag (default=latest).
         tests                          : Run tests.
         help                           : Show this help.
```
- The project is configured to run tests via CircleCI when any new changes are pushed to `master`
