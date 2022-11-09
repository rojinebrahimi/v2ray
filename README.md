# v2ray
Yet another tool to feel freedom :)
### Pre-requisites
- Docker
- Docker-Compose

### Setup
First, clone the repo into your desired path and "cd" to it. Then build the required images using:
```
docker-compose build
```
Second, go for running the container. The default port is 9007 but feel free to change it via args in the docker-compose file.
```
docker-compose -p v2ray up -d
```
Enjoy freedom!

### Acknowledgement:
 - The main script and configuration rights belongs to [vaxilu](https://github.com/vaxilu).
 - The latest version might change in the future; the used version at the time of writing, is 0.3.2
 
