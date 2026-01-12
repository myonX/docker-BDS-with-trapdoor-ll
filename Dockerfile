FROM ubuntu:24.04
RUN mkdir /home/bds-server
WORKDIR /home/bds-server
COPY setup-bds.sh .
RUN rm -rf /var/lib/apt/lists/* && apt-get update && apt-get install -y wget unzip expect && \
    dpkg --add-architecture i386 && \
    wget -nc -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key && \
    wget -nc -P /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/noble/winehq-noble.sources && \
    apt update && \
    apt install -y --install-recommends winehq-stable
CMD ["bash", "./setup-bds.sh"]
