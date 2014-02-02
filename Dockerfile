FROM ubuntu:latest
MAINTAINER Borja Burgos <borja@tutum.co>

# Install Dependencies
RUN apt-get update
RUN apt-get install -y build-essential libx11-dev libgl1-mesa-dev libxext-dev perl  perl-modules make

# Download UnixBench
ADD http://byte-unixbench.googlecode.com/files/UnixBench5.1.3.tgz /tmp/UnixBench5.1.3.tgz
RUN tar -xzvf /tmp/UnixBench5.1.3.tgz -C /tmp

# Run UnixBench
WORKDIR /tmp/UnixBench
CMD ["./Run"]