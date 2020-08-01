FROM hamburml/embedded-software-ci:latest
RUN apt-get update && apt-get install -y liblog4cxx-dev libssl-dev libncurses5-dev libncursesw5-dev nano
RUN wget https://github.com/miracoli/docker-embedded-sw-ci-mqtt/raw/master/wiringpi-latest.deb
RUN /bin/bash -c 'set -ex && \
    ARCH=`uname -m` && \
    if [ "$ARCH" != "x86_64" ]; then \
       dpkg -i wiringpi-latest.deb ; \
    fi'
RUN git clone https://github.com/eclipse/paho.mqtt.c.git
WORKDIR /opt/packs/paho.mqtt.c
RUN make
RUN make install
