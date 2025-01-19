FROM ubuntu:22.04

WORKDIR /

RUN apt-get update && apt-get -y install curl

RUN apt-get update && apt-get install -y pciutils

RUN apt-get -y install lshw

# we ensure that the python3.11 is installed
RUN apt-get install -y \
    python3.11 \
    python3-pip
    
# install dependencies
RUN pip install pydantic==2.10.1 chainlit ollama

COPY app.py /app.py
COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["sh", "/docker-entrypoint.sh"]
