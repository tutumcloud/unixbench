FROM ubuntu:latest
MAINTAINER Borja Burgos <borja@tutum.co>

# Install Dependencies
RUN apt-get update && apt-get install -y build-essential libx11-dev libgl1-mesa-dev libxext-dev perl  perl-modules make

# Download UnixBench
ADD http://byte-unixbench.googlecode.com/files/UnixBench5.1.3.tgz /tmp/UnixBench5.1.3.tgz

# Removing this RUN command due to incompatibility with Docker 0.8 
# If <src> is a local tar archive in a recognized compression format (identity, gzip, bzip2 or xz) 
# then it is unpacked as a directory. Resources from remote URLs are not decompressed <-- NOT TRUE --> 
# RUN tar -xzvf /tmp/UnixBench5.1.3.tgz -C /tmp

# Run UnixBench
# WORKDIR /tmp/UnixBench <-- Changed due to Docker 0.8 bug

WORKDIR /tmp/UnixBench5.1.3.tgz/UnixBench
ENTRYPOINT ["./Run"]
