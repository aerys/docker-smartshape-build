FROM trzeci/emscripten:sdk-tag-1.37.3-64bit

RUN apt-get update && apt-get install -y default-jre

RUN apt-get install -y python-pip ca-certificates && \
  pip install b2
