FROM python:3.4-alpine
RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh curl
WORKDIR /code/elasticsearch-py
RUN git clone https://github.com/elastic/elasticsearch-py.git .
RUN pip install requests==1.0.0 nose coverage mock pyaml nosexcover ipdb
COPY wait-for-elasticsearch.sh .
RUN python setup.py develop
