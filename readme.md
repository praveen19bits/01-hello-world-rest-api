# Hello World Rest API

### Running the Application

Before you start:
   - Install maven build management tool.
   - Install Intellij Idea tool.
   - Install Docker tool box for windows.
        - https://docs.docker.com/toolbox/toolbox_install_windows/
   - Some of imp docker info below:
        - Docker VM details
     		- IP: 192.168.99.100
            - User: docker
            - Password: tcuser
        - Other Docker VM command and details of SSH into DOCKER VM
            - https://devilbox.readthedocs.io/en/latest/howto/docker-toolbox/ssh-into-docker-toolbox.html
            - echo $DOCKER_HOST // to know docker ip address and host name.
   - To build docker image, use command "mvn clean install"
   - Above cmd will create docker image. You can use following docker cmds:
            
            - docker ps //list running containers
            - docker ps -a //list all running and stop containers
            - docker stop <container id or list of container ids> //to stop container
            - docker rm <list of container ids> // to remove container
            - docker images // to list container images
            - docker rmi <list of docker images> // to remove images
            - docker pull <repositary id with tag> // to pull repo from docker hub
            - docker run -p <machine port to map>:<container port> <image name> // directly run container with image
            - docker push <docker hub id>/image_name // this will require docker login using "docker login"
            - docker run -d -p 9090:9090 praveen19bits/hello-world-rest-api:1.0.0  // to run in detached mode
            - docker exec -it <container id> sh // to get int to cotainer
            - docker logs --follow ContainerName/ContainerID

Run RestfulWebServicesApplication as a Java Application.

As DOcker tools box is small VM, runs on Windows host. Running below url won't work in browser. 
- http://localhost:9090/hello-world

To make url working, you have to use docker vm ip address which you can get by typeing below command on terminal
- echo %DOCKER_HOST%
- output of above cmd:  tcp://192.168.99.100:2376
- Now in browser type: http://192.168.99.100:9090/hello-world
- below output you will see in browser.

```txt
Hello World V1 abcde
```

- http://192.168.99.100:9090/hello-world-bean

```json
{"message":"Hello World"}
```

- http://192.168.99.100:9090/hello-world/path-variable/praveen

```json
{"message":"Hello World, praveen``"}
```