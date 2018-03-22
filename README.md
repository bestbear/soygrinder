# soygrinder
# Build Docker container	
docker build config 
Sending build context to Docker daemon  10.24kB
Step 1/2 : FROM alpine
latest: Pulling from library/alpine
ff3a5c916c92: Pull complete 
Digest: sha256:7b848083f93822dd21b0a2f14a110bd99f6efb4b838d499df6d04a49d0debf8b
Status: Downloaded newer image for alpine:latest
 ---> 3fd9065eaf02
Step 2/2 : RUN ls
 ---> Running in 9148c9213909
bin
dev
etc
home
lib
media
mnt
proc
root
run
sbin
srv
sys
tmp
usr
var
Removing intermediate container 9148c9213909
 ---> f7e1a6750f81
Successfully built f7e1a6750f81
# docker-destroy-all.sh
#!/bin/bash
# Stop all containers
docker stop $(docker ps -a -q)
# Delete all containers
docker rm $(docker ps -a -q)
# Delete all images
docker rmi $(docker images -q)
