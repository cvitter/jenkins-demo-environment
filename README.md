# Jenkins Demonstration Environment

This project allows you to quickly build a Jenkins (http://jenkins.io) environment that runs within a Docker container with persistent storage mapped to a local drive. This project:

* Will install the latest Docker-ized version Jenkins (found at https://hub.docker.com/r/jenkins/jenkins/); 
* Install Maven (https://maven.apache.org/) in the container;
* And install Docker (https://www.docker.com/) in the container.

In the next section we will cover how to configure, install, and run Jenkins.

## Configuration, Installation, and Running

Before installing and running Jenkins the first time you will want to update the `docker-compose.yml` file for your specific requirements as outlined below:

**Time Zone**:

If you would like to set Jenkins time zone you can edit the following line in the ``environment`` section of the file:

`` JAVA_OPTS: "-Dorg.apache.commons.jelly.tags.fmt.timeZone=America/New_York" ``

**Ports**:

In the default configuration Jenkins will be available on port ``9080`` (i.e. at ``http://localhost:9080``). You can edit the port in the following line in the ``ports`` section of the file:

`` - "9080:8080" #host:container ``

**Persistent Storage**: 

To persist your Jenkins home when the container restarts you will need to map a local volume on your machine to the Jenkins home directory on the docker container. In my environment I map Jenkins home to the ``/Users/craigvitter/Jenkins`` directory on my MacBook. You should edit that portion of the following line in the ``volumes`` section:

`` - /Users/craigvitter/Jenkins:/var/jenkins_home     # Set the Jenkins home on the host machine ``

**Docker**:



`` - /var/run/docker.sock:/var/run/docker.sock        # Allow the container to run Docker on Docker ``


