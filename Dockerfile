FROM ubuntu:jammy
ENV DEBIAN_FRONTEND=noninteractive TZ="Europe/Bucharest"
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update \
    && apt-get install -y sudo

WORKDIR /root
USER root

COPY . .

CMD ["-l"]
