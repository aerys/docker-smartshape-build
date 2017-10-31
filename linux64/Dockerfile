FROM gcc:4.9.4

RUN apt-get update && apt-get install -y \
  libgl1-mesa-dev \
  libglu1-mesa-dev \
  libosmesa6-dev \
  libglew-dev \
  libsdl2-dev \
  libgtk2.0-dev \
  libgtk-3-dev \
  libgtkglext1-dev \
  libcurl4-openssl-dev \
  libfreetype6-dev

RUN apt-get install -y python3-pip ca-certificates && pip3 install b2
