# Hello World Rest API

### Running the Application

Before you start:
   - Install maven build management tool.
   - Install Intellij Idea tool.
   - Install Docker Desktop for Windows. Benefit of having this is : 
        - It brings up with docker installation and kubernetes as well. 
        - You do not need to install minikube separately. 
        - Most imp, these both the installation(docker and kubernetes) runs locally on your system.
        - Docker desktop also has rich UI from where you can see all container running, you can stop
          delete the containers.
        - Below is the link to download
            - https://hub.docker.com/editions/community/docker-ce-desktop-windows
   - Add new env variable KUBECONFIG in system and give value to it (default location is: C:\Users\<username>\.kube\config)
   - By this time, your system is all set with Docker and Kubernetes.
   - Type "docker -v" and "kubectl get nodes" to check if both these working.
   - To build docker image, use command "mvn clean install"
   - Above cmd will create docker image. Fallowing are useful docker cmds:
            
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

- http://localhost:9090/hello

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