FROM ubuntu:20.04

RUN apt update -y && apt install -y python3-pip
RUN pip install numpy
RUN pip install matplotlib

WORKDIR /test

RUN apt install -y git
RUN git clone https://github.com/Simulation-Software-Engineering/testing-python-exercise.git

ENTRYPOINT /bin/bash