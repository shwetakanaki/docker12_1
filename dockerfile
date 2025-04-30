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
                
FROM  openjdk
WORKDIR /app
COPY . /app/
RUN java demo.java
CMD [ "java","demo.java" ]


# to bulid image :
#     docker build -t <image_name>:tagname  .
# to run the image :
#     docker run -it <image_name>:tagname 
