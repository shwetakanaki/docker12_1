# FROM baseImage:  Set the baseImage to use for subsequent instructions. 
#                   FROM must be the first instruction in a Dockerfile.

# WORKDIR /the/workdir/path: Set the working directory for any subsequent ADD, COPY, CMD, 
#            ENTRYPOINT, or RUN instructions that follow it in the Dockerfile.
# COPY source dest: Copy files or folders from source to the 
#                   dest path in the image's filesystem.
# ADD source dest : Copy files, folders, 
#                   or remote URLs from source to the dest path in the image's filesystem.
# RUN command: Execute any commands on top of the current 
#              image as a new layer and commit the results
# CMD [ "executable" ]: Execute any commands while creating the container 
# CMD [ "executable" ]: it will override the privious one 
# ENTRYPOINT [ "executable" ] :  Execute any commands while createing the container 
# USER daemon
                
FROM openjdk
WORKDIR /app
COPY . /app/
RUN java demo.java
CMD [ "java","demo.java" ]


# to bulid image :
#     docker build -t <image_name>:tagname  .
# to run the image :
#     docker run -it <image_name>:tagname 
# to create the repo:
#     docker tag <image_name>:tagname  username/<image_name>:tagname 
# docker push <image_name>:tagname 
# ex:
#     docker tag docker12_1:t1  shweta1978/docker12_1:t1
#     docker images
#     docker shweta1978/docker12_1
#     docker push  shweta1978/docker12_1:t1

# docker basic commands:
# 1) Display docker images available in our machine​

# $ docker images​

# 2) Download docker image​

# $ docker pull  <imagename / image id>​

# 3) Run docker image​

# $ docker run -it  <imagename / image id>​

# 4) Delete docker image​

# $ docker rmi <imagename / image id>​

# 5) Display all running docker containers​

# $ docker ps​

# 6) Display all running and stopped containers​

# $ docker ps -a​

# 7) Delete docker container​

# $ docker rm <container id>​

# 8) Delete docker image forcefully​

# $ docker rmi f <image id>​

# 9) Stop Docker container​

# $ docker stop <container id>​

# 10) Delete all stopped containers and unused images and unused networks​

# $ docker system prune  -a​

# to create the volume:
#     docker volume create <volume_name>
# to list the volume:
#     docker volume ls
# to remove the volume:
#     docker volume rm <volume_name>
# to mount the volume to conatiner:
# docker run -d --name <conatiner_name> --mount source=<volume_name>,target=<path> <image_name>:tagname

# to inspect the volume:
#     docker volume inspect <volume_name>
# to inspect the container:
#     docker inspect <container_name>
# to inspect the image:
#     docker inspect <image_name>:tagname