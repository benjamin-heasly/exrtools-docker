FROM ubuntu:14.04

MAINTAINER Ben Heasly <benjamin.heasly@gmail.com>

RUN apt-get update \
    && apt-get install -y \
    exrtools \
    && apt-get clean \
    && apt-get autoclean \
    && apt-get autoremove

ENTRYPOINT ["/bin/bash"]
CMD ["man", "-P", "cat", "exrtools"]
