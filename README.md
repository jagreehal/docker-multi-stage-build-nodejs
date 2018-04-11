# Docker multi stage builds for node.js apps
[![Build Status](https://travis-ci.org/jagreehal/docker-multi-stage-build-nodejs.svg)](https://travis-ci.org/jagreehal/docker-multi-stage-build-nodejs)

[![Greenkeeper badge](https://badges.greenkeeper.io/jagreehal/docker-multi-stage-build-nodejs.svg)](https://greenkeeper.io/)

Following on from https://glebbahmutov.com/blog//making-small-docker-image/ by Dr. Gleb Bahmutov PhD

This example shows how to build node.js apps using Docker multi stage builds

As you can see the smallest image size is 44.8MB

### images_list

| REPOSITORY | TAG          |   SIZE |
| ---------- | :---------:  | -----: |
| jag/msb    | simple       |  136MB |
| jag/msb    | multi-stage  |   66MB |
| jag/msb    | bare         | 44.8MB |
