FROM ubuntu:20.04

ENV LANG en_US.utf8

RUN apt update;

CMD ["sleep", "1000"]
