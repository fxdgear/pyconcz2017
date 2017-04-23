FROM ubuntu:16.04

RUN \
  apt-get update && \
  apt-get install -y python python-dev python-pip && \
  rm -rf /var/lib/apt/lists/*

RUN pip install -U jinja PyYAML docker

WORKDIR /code
COPY . /code

CMD ["python", "run.py"]

