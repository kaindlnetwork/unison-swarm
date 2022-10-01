FROM ubuntu:18.04
# Add Tini
ENV TINI_VERSION v0.19.0
#ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
#RUN chmod +x /tini
#ENTRYPOINT ["/tini -vvv", "--"]
# or docker run your-image /your/program ...
RUN apt-get update && apt-get install -y --no-install-recommends  \
  unison \
  && rm -rf /var/lib/apt/lists/*
# Avoid that unison runs into "Argument list too long" error by increasing limit
RUN ulimit -s 65536
ADD start.sh /start.sh
RUN chmod +x /start.sh
# Run your program under Tini
CMD ["/start.sh"]
#RUN useradd notroot
#USER notroot
