FROM hamburml/embedded-software-ci:latest

RUN apt-get update && apt-get install libssl-dev
RUN git clone https://github.com/eclipse/paho.mqtt.c.git
RUN cd paho.mqtt.c
RUN make

