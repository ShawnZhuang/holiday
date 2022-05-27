is_docker_installed=$(which docker )
# is_docker_installed=$(which docker2 )#for test
# echo ${is_docker_installed}
if [ ! "${is_docker_installed}" ]; then
 echo "docker is required"
 exit 2
fi
echo "check good: docker is installed"
# docker pull jenkins/jenkins

docker run -d -p 49001:8080 -v $PWD/jenkins:/var/jenkins_home -t jenkins/jenkins

docker run  --name jenkins-blueocean  -d  -p 8089:8089  -p 50009:50009  -v jenkins-data:/var/jenkins_home  jenkinsci/blueocean