FROM python:3.4-alpine
RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh curl
WORKDIR /code
RUN git clone https://github.com/elastic/elasticsearch-py.git
RUN git clone https://github.com/elastic/elasticsearch.git
RUN pip install requests==1.0.0 nose coverage mock pyaml nosexcover ipdb
WORKDIR /code/elasticsearch-py/
RUN python setup.py develop
COPY wait-for-elasticsearch.sh .
