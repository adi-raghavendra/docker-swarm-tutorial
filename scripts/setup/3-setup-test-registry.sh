eval $(docker-machine env swarm-test-1)

docker service create --name registry \
	-p 5000:5000 \
	--reserve-memory 100m \
	--mount "type=bind,source=/Users/araghavendra/docker-swarm-tutorial/scripts,target=/var/lib/registry" \
registry:2.5.0

