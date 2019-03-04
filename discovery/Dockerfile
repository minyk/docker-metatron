#FROM openjdk:8u181-jdk
FROM airdock/oraclejdk:1.8

ARG METATRON_TAG
ENV METATRON_TAG ${METATRON_TAG}
ADD metatron-discovery-${METATRON_TAG}-bin.tar.gz /
RUN ln -sf /metatron-discovery-* /discovery
COPY metatron.sh /discovery/bin/metatron.sh

# Add Tini
ENV TINI_VERSION v0.18.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
RUN chmod +x /tini
ENTRYPOINT ["/tini", "--"]
WORKDIR "/discovery"
CMD ["./bin/metatron.sh", "--init", "upstart"]
EXPOSE 8180
