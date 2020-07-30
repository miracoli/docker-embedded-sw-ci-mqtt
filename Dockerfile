FROM hamburml/docker-embedded-software-ci:latest

RUN git clone https://github.com/eclipse/paho.mqtt.c.git
RUN cd paho.mqtt.c
RUN make
