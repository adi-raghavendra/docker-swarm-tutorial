#Build images
docker-compose -f docker-compose-test-local.yml build app

# Run staging service
#eval $(docker-machine env swarm-test-1)
docker-compose -f docker-compose-test-local.yml up -d staging-dep

#List containers
docker-compose -f docker-compose-test-local.yml ps

#Run staging tests - functional tests
docker-compose -f docker-compose-test-local.yml run --rm staging-tests

#Bring down staging
docker-compose -f docker-compose-test-local.yml down 

#Push image to registry


