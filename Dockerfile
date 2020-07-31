FROM hamburml/embedded-software-ci:latest

RUN apt-get update && apt-get install -y liblog4cxx-dev libssl-dev libncurses5-dev libncursesw5-dev nano
RUN git clone https://github.com/eclipse/paho.mqtt.c.git
WORKDIR /opt/packs/paho.mqtt.c
RUN make
