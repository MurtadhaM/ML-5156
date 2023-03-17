#!/bin/bash
DOCKERHUB_USER=mmarzouq

docker build -t docker-lab-5156 . \
&& docker tag docker-lab-5156 $DOCKERHUB_USER/docker-lab-5156 \
&& docker push $DOCKERHUB_USER/docker-lab-5156 \
&& docker run -it --rm -p 8888:8888 $DOCKERHUB_USER/docker-lab-5156
# jupyter-notebook --ip 0.0.0.0 --port 8888 --allow-root --no-browser #INSIDE CONTAINER