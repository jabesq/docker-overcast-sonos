# Docker image for Overcast-Sonos
Play Overcast podcasts on your Sonos from Docker

This is a container for Overcast Sonos.
Overcast-Sonos create a Sonos service to play Overcast podcasts on your Sonos.

## Running the container

``` bash
docker run -d -p 8140:8140 -e OVERCAST_USERNAME=<OVERCAST_USERNAME>\
-e OVERCAST_PASSWORD=<OVERCAST_PASSWORD> --name=Overcast jabesq/docker-over
cast-sonos
```