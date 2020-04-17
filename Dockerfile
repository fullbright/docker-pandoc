FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -y install --no-install-recommends wget imagemagick texlive-latex-recommended texlive-fonts-recommended texlive-latex-extra texlive-fonts-extra texlive-xetex && rm -rf /var/lib/apt/lists/*
RUN wget https://github.com/jgm/pandoc/releases/download/2.9.2.1/pandoc-2.9.2.1-1-amd64.deb --no-check-certificate

RUN dpkg -i pandoc-2.9.2.1-1-amd64.deb

WORKDIR /doc