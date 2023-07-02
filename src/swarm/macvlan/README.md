# TODO

```bash
# Create Network MacVLAN configuration (need IP Range !)
docker network create --config-only --subnet 192.168.1.0/24 -o parent=enp0s31f6 --ip-range 192.168.1.151/32 collabnet
# Create Network MacVLAN for Swarm attachable based on config
docker network create --driver=macvlan --scope swarm --config-from collabnet --attachable swarm-macvlan
# Deploy Treafik service
docker stack deploy -c compose.yml traefik
```

[Documentation](https://collabnix.com/docker-17-06-swarm-mode-now-with-macvlan-support/)
