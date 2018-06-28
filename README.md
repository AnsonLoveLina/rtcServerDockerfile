#docker-apprtc

Docker container for [apprtc][3]

> Detailed information on developing in the webrtc github repo can be found in the WebRTC GitHub repo developer's guide.

## Install dependencies

  - [Docker][2]

To install docker in Ubuntu 14.04 use the commands:

    $ sudo apt-get update
    $ sudo apt-get install docker.io

 To install docker in other operating systems check [docker online documentation][4]

## Usage (no checking out)

	$ docker build -t hisign.com/roomserver ./DockerfileRoomServer
	$ docker build -t hisign.com/collider .

## Usage (downloading pre-built image from build)

	$ docker run -it --name roomserver -P hisign.com/roomserver
	$ docker run -it --name collider -P hisign.com/collider
	
## Accessing the web app:

After that open up the following address :

  - **https://$DOCKER_HOST:8080/


## More Info

About apprtc: [https://appr.tc/][1]

To help improve this container [docker-apprtc][5]