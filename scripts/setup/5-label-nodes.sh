eval $(docker-machine env swarm-test-1)

docker node update \
  --label-add env=prod-like \
  swarm-test-2


docker node update \
  --label-add env=prod-like \
  swarm-test-3
  
docker node inspect --pretty swarm-test-2
docker node inspect --pretty swarm-test-3


