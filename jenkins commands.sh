docker run \
  --name jenkins-docker \
  --rm \
  --detach \
  --privileged \
  --env DOCKER_TLS_CERTDIR=/certs \
  --volume jenkins-docker-certs:/certs/client \
  --volume jenkins-data:/var/jenkins_home \
  --publish 2376:2376 \
  docker:dind



docker  run --privileged -d -p 8082:8080 \
    -v jenkinsvol1:/var/jenkins_home \
    --name jenkins-local \
    --user root \
   jenkins-custom

  
  docker run \
  --name jenkins-docker \
  --rm \
  --detach \
  --privileged \
  --volume jenkins-docker-certs:/certs/client \
  --volume jenkins-data:/var/jenkins_home \
  --publish 8002:2376 \
  docker:dind \
  --storage-driver overlay2