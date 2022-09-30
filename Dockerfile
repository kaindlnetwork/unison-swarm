FROM ubuntu
RUN apt-get update && apt-get install -y --no-install-recommends  \
  unison \
  && rm -rf /var/lib/apt/lists/*
