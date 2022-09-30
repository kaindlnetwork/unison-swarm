FROM ubuntu
RUN apt-get update && apt-get install -y \
  unison \
  && rm -rf /var/lib/apt/lists/*
