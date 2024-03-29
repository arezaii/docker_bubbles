# Code Bubbles in Docker

This is an attempt to get a version of [Code Bubbles](http://cs.brown.edu/~spr/codebubbles/) working in a Docker container to make it easier to demo the software.

## Requirements
- [Docker installed](https://docs.docker.com/get-started/) with the docker daemon running.
- Output redirection only tested on a CentOS 7 installation, but should work on most Linux distros.

## To Run Code Bubbles
1. Build the docker container from the Dockerfile
```
$ docker build -t code_bubbles .
```
2. Run the docker container
```
$ sudo docker run -it --net=host --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" code_bubbles
```
3. start eclipse and set the default workspace
```
root@localhost:/opt/eclipse# ./eclipse
```
4. start code bubbles
```
root@localhost:/opt/eclipse# java -jar /bubbles.jar
```
5. go through the code bubbles setup options

## Demo on Youtube

[Demo video of running container](https://www.youtube.com/watch?v=v1FW3lDxaHw&feature=youtu.be)
