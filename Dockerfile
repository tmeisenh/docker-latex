FROM ubuntu:latest

RUN apt-get update && apt-get install -y software-properties-common && \
      add-apt-repository ppa:jonathonf/texlive-2016 && \
      apt-get update && \
      LANGUAGE=en apt-get install --no-install-recommends -y git make wget texlive-full xzdec && \
      apt-get clean -y
