
From debian:stable-slim
RUN apt-get update && apt-get -y --no-install-recommends  install lib32gcc1 lib32stdc++6 ca-certificates && rm -rf /var/cache/apk/* && useradd -m -d  /home/container container
USER container
ENV  USER container
ENV  HOME /home/container
WORKDIR /home/container

CMD ["/bin/bash"]
