echo "Building image"
docker build -t 4info/docker-swarm-tutorial -f DockerFile .

echo "Stoping existing containers"
container_id=$(docker ps -aqf "name=docker-swarm-tutorial")
echo "container_id:[$container_id]"
docker stop $container_id
docker rm $container_id

echo "Now deploying"
docker run -d --name docker-swarm-tutorial \
 -p 8080:8080  4info/docker-swarm-tutorial