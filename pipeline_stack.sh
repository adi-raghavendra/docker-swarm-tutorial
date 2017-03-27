#Build images
docker stack -f docker stack-stack.yml build app

# Run staging service
#eval $(docker-machine env swarm-test-1)
docker stack deploy -c  docker-compose-stack.yml docker-swarm-tutorial-stack

#List containers
docker stack -f docker stack-stack.yml ps

#Run staging tests - functional tests
docker stack -f docker stack-stack.yml run --rm staging-tests

#Bring down staging
docker stack -f docker stack-stack.yml down 

#Push image to registry


