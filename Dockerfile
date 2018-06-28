FROM daocloud.io/centos:7

MAINTAINER 326236882@qq.com

EXPOSE 8089

ADD resource/TLS /rtcserver/TLS
ADD resource/bin /rtcserver/bin

#roomserver
#ADD resource/google_appengine_1.9.40.tar.gz /rtcserver/google_appengine_1.9.40
#ADD resource/apprtc /rtcserver/apprtc
#ENV PATH=$PATH:/rtcserver/google_appengine_1.9.40/
#CMD /rtcserver/bin/roomserver.sh

#collider
ADD resource/apprtc/src/collider /rtcserver/collider/src/
ADD resource/go1.10.1.linux-amd64.tar.gz /rtcserver/golang
ENV GOROOT=/rtcserver/golang/go
ENV PATH=$PATH:$GOROOT/bin

ENV GOPATH=/rtcserver/collider
ADD resource/golang.org.x.net.tar.gz $GOPATH/src
ENV PATH=$PATH:$GOPATH/bin
RUN go install golang.org/x/net/websocket/
RUN go get collidermain
RUN go install collidermain
CMD /rtcserver/bin/collider.sh
