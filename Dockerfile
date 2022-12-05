FROM ubuntu:latest

WORKDIR /

ARG USERNAME=vpnuser
ARG PASSWORD=#qweasd@QWEASD!
ARG PORT=9007

RUN apt-get update && apt-get install wget curl tar -y

COPY . .
RUN chmod +x entrypoint.sh

RUN apt-get update && \
    apt-get install -yq tzdata && \
    ln -fs /usr/share/zoneinfo/Asia/Tehran /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata

WORKDIR /usr/local

RUN wget -N --no-check-certificate -O /usr/local/x-ui-linux-amd64.tar.gz https://github.com/FranzKafkaYu/x-ui/releases/download/0.3.3.18-1206/x-ui-linux-amd64-english.tar.gz
RUN tar zxvf x-ui-linux-amd64.tar.gz
RUN rm -f x-ui-linux-amd64.tar.gz
RUN chmod +x /usr/local/x-ui/x-ui
RUN chmod +x /usr/local/x-ui/bin/xray-linux-amd64

RUN wget --no-check-certificate -O /usr/bin/x-ui https://raw.githubusercontent.com/FranzKafkaYu/x-ui/master/install_en.sh
RUN chmod +x /usr/local/x-ui/x-ui_en.sh
RUN chmod +x /usr/bin/x-ui

RUN /usr/local/x-ui/x-ui setting -username $USERNAME -password $PASSWORD
RUN /usr/local/x-ui/x-ui setting -port $PORT

WORKDIR /

CMD ["./entrypoint.sh"]
