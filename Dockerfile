FROM ubuntu:quantal
MAINTAINER Manfred Touron m@42.am

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y boinc-client
#RUN mkdir /var/lib/boinc-client/slots

USER boinc
WORKDIR /var/lib/boinc-client
ENTRYPOINT ["boinc"]
