# Docker multi stage builds for node.js apps

Following on from https://glebbahmutov.com/blog//making-small-docker-image/ by Dr. Gleb Bahmutov PhD

This example shows how to build node.js apps using Docker multi stage builds

As you can see the smallest image size is 44.8MB

### images_list

| REPOSITORY | TAG          |   SIZE |
| ---------- | :---------:  | -----: |
| jag/msb    | simple       |  136MB |
| jag/msb    | multi-stage  |   66MB |
| jag/msb    | bare         | 44.8MB |
