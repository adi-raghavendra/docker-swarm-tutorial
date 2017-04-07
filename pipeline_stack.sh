

# Run staging service
eval $(docker-machine env swarm-test-1)
docker stack deploy -c  docker-compose-stack.yml docker-swarm-tutorial-stack
# docker-service ls - should give you list of services
# test url by "docker-machine ls" - which will give ip address http://192.168.99.102:8090/hello



#List containers
docker stack -f docker-compose-stack.yml ps

#Run staging tests - functional tests
docker stack -f docker stack-stack.yml run --rm staging-tests

#Bring down staging
docker stack -f docker stack-stack.yml down 

#Push image to registry


