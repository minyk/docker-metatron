FROM openjdk:8u181-jdk

ENV DRUID_VERSION druid-0.9.1-SNAPSHOT.3.1.2.201901170858-hadoop-2.7.3
ADD druid-0.9.1-latest-hadoop-2.7.3-bin.tar.gz /
RUN ln -sf /${DRUID_VERSION} /druid
ADD start-single-foreground.sh /druid

# Add Tini
ENV TINI_VERSION v0.18.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
RUN chmod +x /tini
ENTRYPOINT ["/tini", "--"]
WORKDIR "/druid"
# Run your program under Tini
CMD ["./start-single-foreground.sh", "zookeeper", "coordinator", "broker", "historical", "middleManager", "overlord"]
