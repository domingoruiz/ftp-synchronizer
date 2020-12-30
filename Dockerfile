FROM ubuntu:20.04
MAINTAINER Domingo Ruiz Arroyo <ordenadordomi@gmail.com>

# We set the time zone
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Madrid
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# We update Ubuntu 20.04
RUN apt-get update
RUN apt-get upgrade -y

# We install nano and lftp
RUN apt-get install -y nano lftp

# We create the service that runs every time the container starts
COPY script.sh /usr/bin/
RUN mv /usr/bin/script.sh /usr/bin/script
RUN chmod +x /usr/bin/script

# We define the arguments to use
ARG SERVER
ARG USER
ARG PASSWORD
ARG DESTINATION

# Run the script
CMD script;