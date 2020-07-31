FROM hamburml/embedded-software-ci:latest

RUN apt-get update && apt-get install -y libssl-dev nano
RUN git clone https://github.com/eclipse/paho.mqtt.c.git
WORKDIR /opt/packs/paho.mqtt.c
RUN make
