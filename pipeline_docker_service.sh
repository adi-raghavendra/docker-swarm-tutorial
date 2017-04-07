#Run unit tests, build war
docker-compose -f docker-compose-test-local.yml run --rm unit-tests

#Build images
docker-compose -f docker-compose-test-local.yml build app

#Push image to docker hub
docker push 4info/docker-swarm-tutorial

# Run staging service.
# Assuming service has been already created.
#docker service create --name docker-swarm-tutorial-test  -p18080:8080 --replicas 1 4info/docker-swarm-tutorial
eval $(docker-machine env swarm-test-1)
docker service update --image 4info/docker-swarm-tutorial docker-swarm-tutorial-test

# Run integration test


eval $(docker-machine env swarm-test-1)
docker service update --image 4info/docker-swarm-tutorial docker-swarm-tutorial



eval $(docker-machine env swarm-1)
docker service update --image 4info/docker-swarm-tutorial docker-swarm-tutorial-test


eval $(docker-machine env swarm-1)
docker service update --image 4info/docker-swarm-tutorial docker-swarm-tutorial
