FROM mesosphere/mesos-master:0.27.0-0.2.190.ubuntu1404

RUN apt-get clean
RUN apt-get update -y
RUN apt-get install -y build-essential libprotobuf-dev libgoogle-glog-dev protobuf-compiler python-dev python-boto \
	libcurl4-nss-dev libsasl2-dev libsasl2-modules maven libapr1-dev libsvn-dev libboost-dev

VOLUME /framework
WORKDIR /framework

ENTRYPOINT bash
