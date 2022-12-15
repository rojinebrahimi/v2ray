# v2ray
Yet another tool to feel freedom :)
### Pre-requisites
- Docker
- Docker-Compose

### Setup
- First Make a directory named letsencrypt in `/etc` in order to Generate SSL Certificate:
```
mkdir /etc/letsencrypt
```

- Second, clone the repo into your desired path and "cd" to it. Then build the required images using:
```
docker-compose build
```
- Third, run the container. The default port is 9007, feel free to change it via args in the docker-compose file.
```
docker-compose -p v2ray up -d
```

Enjoy freedom!

### Acknowledgements
 - The Main Script and configuration rights belongs to [vaxilu](https://github.com/vaxilu).
 - The Latest Version might change in the future. the used version at the time of writing, is `0.3.3` .
 - The English Version [FranzKafkaYu](https://github.com/FranzKafkaYu/x-ui)
 
