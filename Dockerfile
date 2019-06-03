FROM anaconda

MAINTAINER Ethan Wang <wange011@gatech.edu>

# Getting deep learning dependencies
RUN apk update &&/
    apk add git nvidia-cuda tensorflow

RUN git clone https://github.com/louisabraham/python3-midi &&/
    python setup.py install    
