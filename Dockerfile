FROM alpine:3.12.3
LABEL maintainer="Domingo Ruiz Arroyo <ordenadordomi@gmail.com>"

# We install nano and lftp
RUN apk add --no-cache nano 
RUN apk add --no-cache lftp

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
CMD . /usr/bin/script;