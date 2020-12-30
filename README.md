# FTP Synchronizer
This Docker container synchronizes the content of your host server with an FTP server

### How to use?
As a first step we must download the ftp-synchronizer container from Github Packpages.
```bash
docker pull ghcr.io/domingoruiz/ftp-syncronizer:latest
```
Once downloaded we must start the container with the following command modifying it to taste
```bash
docker container run \
    -it -v <path-in-host-to-syncronize>:/mnt/ \
    -e SERVER=<ftp-server> \
    -e USER=<ftp-username> \
    -e PASSWORD=<ftp-password> \
    -e DESTINATION=<ftp-path-destination> \
    --restart=always \
    ftp-syncronizer
```
### Development
Application developed by [Domingo Ruiz Arroyo](https://doming.es/) in 2020

### License
This project is published under the MIT license. See the file [LICENSE](../master/LICENSE) for more details.