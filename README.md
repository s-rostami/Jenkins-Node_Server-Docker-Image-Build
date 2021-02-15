## key steps:
---

  - Creating an image repository in AWS ECR
  - Creating the build stage
  - Deploying the docker image on AWS ECS

## Build Stage:
---
The build stage can be devided into two parts. First creating a docker image and then creating a build step. The following files were created and pushed into github:
- Dockerfile
- buildspec.yml 
- package.json
- index.js


Note:

Docker needs to be installed on the jenkins instance. 

jenkins instance os:

```
cat /etc/os-release
```


```
$ curl -fsSL https://get.docker.com -o get-docker.sh
$ sudo sh get-docker.sh
```

after installation of Docker, jenkins user needs to be added to the docker group and also logout and login so that group membership gets re-evaluated.

```
sudo usermod -aG docker jenkins

```
