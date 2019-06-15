FROM tensorflow/tensorflow:latest-gpu-py3

MAINTAINER Ethan Wang <wange011@gatech.edu>

# Getting deep learning dependencies
RUN apt-get update && \
    apt-get install -y git

RUN pip install matplotlib 	

RUN git clone https://github.com/louisabraham/python3-midi && \
    cd python3-midi && \
    python setup.py install

RUN apt-get install spyder3    
