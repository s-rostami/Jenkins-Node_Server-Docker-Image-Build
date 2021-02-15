## key steps:
---

  - Creating an image repository in AWS ECR
  - Installing Docker on the jenkins instance and adding the jenkins user into the docker group
  - creating jenkins ecr credentials - the user which access id key is used needs permission added for access to ECR
  - Creating the jenkinsfile - depository name on ecr and the docker inage name needs to be similar.
  - Deploying the docker image on AWS ECS


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
