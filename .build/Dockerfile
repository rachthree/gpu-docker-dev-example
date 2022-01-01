ARG TF_VER
FROM tensorflow/tensorflow:$TF_VER

RUN apt-get update && apt-get install -yq \
  build-essential \
  curl \
  git \
  nano \
  vim \
  wget \
  graphviz

COPY requirements.txt /tmp/requirements.txt

WORKDIR /tmp
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt -v

ARG PYTORCH_VER
RUN pip3 install $PYTORCH_VER

EXPOSE 8888
