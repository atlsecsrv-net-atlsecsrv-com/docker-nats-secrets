# docker-nats-secrets
To expose failing docker secret / environment variable / nats configuration file

```
./build.sh

docker stack deploy -c docker-compose-test.yml test

docker logs $(docker ps | grep test_nats | rev | cut -d' ' -f1 | rev)
docker logs $(docker ps | grep test_client | rev | cut -d' ' -f1 | rev)

docker stack rm test
```
