#test
From debian:stable-slim
RUN apt-get update && apt-get -y --no-install-recommends  install lib32gcc1 lib32stdc++6 ca-certificates gdb  gcc g++  lib32tinfo5 lib32z1 lib32stdc++6 libtinfo5  libncurses5  iproute2 gdb libsdl1.2debian libfontconfig && rm -rf /var/cache/apk/* && useradd -m -d /home/container container
USER container
ENV  USER container
ENV  HOME /home/container
WORKDIR /home/container

CMD ["/bin/bash"]
