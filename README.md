# Docker image for Overcast-Sonos
Play Overcast podcasts on your Sonos from Docker

This is a container for [Overcast Sonos](https://github.com/jacobian/overcast-sonos).
Overcast-Sonos create a Sonos service to play Overcast podcasts on your Sonos.

## Running the container

``` bash
docker run -d -p 8140:8140 -e OVERCAST_USERNAME=<OVERCAST_USERNAME>\
-e OVERCAST_PASSWORD=<OVERCAST_PASSWORD> --name=Overcast jabesq/docker-over
cast-sonos
```

## Setup Sonos service

1. Go to `http://<SONOS_IP>:1400/customsd.htm`, and enter:

    - SID - some unique SID (255 works if you've not done this before
    - Service Name - some name, `overcast` works
    - Endpoint URL and Secure Endpoint URL: `http://<YOUR_IP>:8140/overcast-sonos`
    - Authentication SOAP header policy: "Anonymous"
    - Check the boxes in the example [picture](https://raw.githubusercontent.com/jabesq/docker-overcast-sonos/master/Screen%20Shot%202016-12-18%20at%2010.56.14%20PM.png)

1. In your Sonos controller, go to "Add Music Service", then add the service above.
