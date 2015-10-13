FROM ubuntu:latest
MAINTAINER Borja Burgos <borja@tutum.co>

# Install Dependencies
RUN apt-get update && \
	apt-get install -y build-essential libx11-dev libgl1-mesa-dev libxext-dev perl perl-modules make curl && \
	apt-get clean

RUN mkdir -p /app && curl -LsS http://byte-unixbench.googlecode.com/files/UnixBench5.1.3.tgz | tar -zxf - -C /app && chmod +x /app/UnixBench/Run
WORKDIR /app/UnixBench

ENTRYPOINT ["/app/UnixBench/Run"]
